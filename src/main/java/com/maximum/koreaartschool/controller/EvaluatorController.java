package com.maximum.koreaartschool.controller;


import com.maximum.koreaartschool.dto.ApplicantProcess;
import com.maximum.koreaartschool.dto.EvaluateScore;
import com.maximum.koreaartschool.dto.ViewApplicantEvaluate;
import com.maximum.koreaartschool.service.ApplicantService;
import com.maximum.koreaartschool.service.EvaluatorService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/evaluator")
@Slf4j
@RequiredArgsConstructor
public class EvaluatorController {
    int evlNo = 1;  // 해당 페이지 심사위원 번호
    int evlStgCd;

    @Autowired
    EvaluatorService evaluatorService;

    @Autowired
    ApplicantService applicantService;

    @GetMapping("")
    public String main() {
        return "/evaluator/main";
    }

    @GetMapping("/progress")
    public String list(Model model) {
        List<ApplicantProcess> applicants = evaluatorService.getAllApplicants();
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }

    @GetMapping("/selectProgress")
    public String getApplicants(@RequestParam("department") String departmentId,
                                @RequestParam("recruitment") String recruitmentId,
                                @RequestParam("stage") String stageId,
                                Model model) {
        List<ApplicantProcess> applicants = evaluatorService.getApplicantsBySelect(departmentId, recruitmentId, stageId);
        model.addAttribute("applicants", applicants);
        return "/evaluator/progress";
    }


    /* ---------- 서류평가 페이지 시작 ---------- */

    // 서류평가 초기화면, (평가위원에게 속한) 전체 지원자 명단 조회
    @GetMapping("/evl_document")
    public String evlDocument(Model model) {
        evlNo = 1;      // 심사위원 1번이라고 가정한 더미데이터
        evlStgCd = 10;  // 서류심사단계, 각 단계마다 이 변수 값을 넣어줘야함
        List<ViewApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo, evlStgCd);     // 전체 지원자 명단 추출
        List<EvaluateScore> existingScores = evaluatorService.getScoresByEvaluator(evlNo);                  // 점수 추출

        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);                    // model에 전체 지원자 명단 추가
        model.addAttribute("existingScores", existingScores);
        return "evaluator/document";
    }
    @GetMapping("selectOption")
    public String selectOption(
            Model model,
            @RequestParam(value = "recruitment", required = false) String recruitment,
            @RequestParam(value = "department", required = false) String department,
            @RequestParam(value = "evaluateStage", required = false) String evaluateStage,
            @RequestParam(value = "currentUrl", required = false) String currentUrl
    ) {

        int deptNum = Integer.parseInt(department);
        int rcrtNum = Integer.parseInt(recruitment);
        evlStgCd = Integer.parseInt(evaluateStage);
        List<ViewApplicantEvaluate> asEvaluatorApplicants;  // 평가위원별 지원자 명단
        if (recruitment.equals("0") && department.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo, evlStgCd);     // 평가위원이 맡은 모든 학생 출력
        } else if (recruitment.equals("0") && !department.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getApplicantByDeptno(evlNo, evlStgCd, deptNum);     // 학과 별 평가위원이 맡은 모든 학생 출력
        } else if (!recruitment.equals("0") && department.equals("0")) {
            asEvaluatorApplicants = evaluatorService.getApplicantByRcrtNo(evlNo, evlStgCd, rcrtNum);     // 모집 전형 별 평가위원이 맡은 모든 학생 출력
        } else {
            asEvaluatorApplicants = evaluatorService.getApplicantByOptions(evlNo, evlStgCd, deptNum, rcrtNum);   //  옵션 선택값에 따른 평가위원이 맡은 모든 학생 출력
        }
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);


        // 해당 URL에 따라 적절한 페이지로 redirect
        if (currentUrl.equals("/evl_document")) {
            return "evaluator/document";
        } else if (currentUrl.contains("/evl_practical")) {
            return "evaluator/practical";
        } else if (currentUrl.contains("/evl_interview")) {
            return "evaluator/interview";
        } else {
            // 다른 페이지로 이동해야 하는 경우에 대한 처리
            return "redirect:/evaluator/evl_document"; // 예시로 루트 페이지로 이동하는 것으로 설정
        }

    }

    @PostMapping("insertScore")
    public String insertScore(
            Model model,
            @RequestParam("applicantCount") int applicantCount,
            @RequestParam Map<String, String> allParams,
            @RequestParam(value = "evaluateStage", required = false) String evaluateStage,
            HttpServletRequest request) {

        // 평가 단계 불러오기
        evlStgCd = Integer.parseInt(evaluateStage);

        List<EvaluateScore> scores = new ArrayList<>();     // 평가 점수 리스트 생성
        List<ViewApplicantEvaluate> evaluations = new ArrayList<>();

        for (int i = 0; i < applicantCount; i++) {
            String checked = allParams.get("apl_ck_" + i);
            if (checked != null) { // 체크 값이 null이 아닌 경우에만 처리
                if (checked.equals("on")) {
                    // 메소드를 사용하여 score 값 입력
                    scores.add(createEvaluateScore(allParams, i, 1));
                    scores.add(createEvaluateScore(allParams, i, 2));
                    evaluations.add(createApplicantEvaluate(allParams, i, "Y"));

                } else if (checked.isEmpty()) {
                    evaluations.add(createApplicantEvaluate(allParams, i, "N"));
                }
            } else {
                evaluations.add(createApplicantEvaluate(allParams, i, "N"));
            }
        }
        evaluatorService.saveScores(scores);
        evaluatorService.updateEvaluations(evaluations); // 평가여부 업데이트

        List<ViewApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo, evlStgCd);
        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);
        evaluatorService.updateEvaluateScoreSum();  // 합계 점수 테이블에 업로드

        // 이전 요청의 URL 가져오기
        String referer = request.getHeader("Referer");

        return "redirect:" + referer;
    }
    /* ---------- 서류평가 페이지 종료 ---------- */

    /* 실기평가 페이지 */
    @GetMapping("/evl_practical")
    public String evlPractical(Model model) {
        evlNo = 1;      // 심사위원 1번이라고 가정한 더미데이터
        evlStgCd = 20;  // 서류심사단계, 각 단계마다 이 변수 값을 넣어줘야함
        List<ViewApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo, evlStgCd);     // 전체 지원자 명단 추출
        List<EvaluateScore> existingScores = evaluatorService.getScoresByEvaluator(evlNo);                  // 점수 추출

        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);                    // model에 전체 지원자 명단 추가
        model.addAttribute("existingScores", existingScores);

        return "evaluator/practical";
    }

    /* 면접평가 페이지 */
    @GetMapping("/evl_interview")
    public String evlInterview(Model model) {
        evlStgCd = 30;  // 면접심사단계, 각 단계마다 이 변수 값을 넣어줘야함
        List<ViewApplicantEvaluate> asEvaluatorApplicants = evaluatorService.getEvaluatorApplicants(evlNo, evlStgCd);     // 전체 지원자 명단 추출
        List<EvaluateScore> existingScores = evaluatorService.getScoresByEvaluator(evlNo);                  // 점수 추출

        model.addAttribute("evaluateApplicantScore", asEvaluatorApplicants);                    // model에 전체 지원자 명단 추가
        model.addAttribute("existingScores", existingScores);
        return "evaluator/interview";
    }

    /* -------------------- 메소드 영역 -------------------- */
    private EvaluateScore createEvaluateScore(Map<String, String> params, int index, int evlQNo) {
        EvaluateScore score = new EvaluateScore();
        score.setEVL_STG_NO(Integer.parseInt(params.get("evl_stg_no_" + index)));
        score.setRCRT_NO(Integer.parseInt(params.get("rcrt_no_" + index)));
        score.setEVL_NO(Integer.parseInt(params.get("evl_no_" + index)));
        score.setAPL_NO(Integer.parseInt(params.get("apl_no_" + index)));
        score.setAPL_NM(params.get("apl_nm_" + index));
        score.setEVL_STG_CD(Integer.parseInt(params.get("evl_stg_cd_" + index)));
        score.setEVLQ_NO(evlQNo);
        score.setSCORE(Integer.parseInt(params.get("score" + evlQNo + "_" + index)));
        return score;
    }

    private ViewApplicantEvaluate createApplicantEvaluate(Map<String, String> params, int index, String isEvaluated) {
        ViewApplicantEvaluate evaluation = new ViewApplicantEvaluate();
        evaluation.setEVL_STG_NO(Integer.parseInt(params.get("evl_stg_no_" + index)));
        evaluation.setRCRT_NO(Integer.parseInt(params.get("rcrt_no_" + index)));
        evaluation.setEVL_NO(Integer.parseInt(params.get("evl_no_" + index)));
        evaluation.setAPL_NO(Integer.parseInt(params.get("apl_no_" + index)));
        evaluation.setIS_EVALUATED(isEvaluated);
        return evaluation;
    }

}