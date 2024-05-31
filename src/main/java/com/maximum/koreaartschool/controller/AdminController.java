package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dto.Evaluator;
import com.maximum.koreaartschool.dto.RecruitmentInformation;
import com.maximum.koreaartschool.dto.StageEvaluator;
import com.maximum.koreaartschool.service.AdminService;
import com.maximum.koreaartschool.service.EvaluatorService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    EvaluatorService evaluatorService;

    @Autowired
    AdminService adminService;

    @GetMapping("/evaluator_selection")
    public String selection(Model model) {
        return "/admin/evaluator_selection";
    }

    @GetMapping("/selectStgEvaluator")
    @ResponseBody
    public List<StageEvaluator> stgEvaluator(@RequestParam("evl_stg_no") int evl_stg_no,
                                             @RequestParam("rcrt_no") int rcrt_no,
                                             @RequestParam(value = "evl_stg_cd", defaultValue = "0") String evl_stg_cd,
                                             Model model) {

        log.info("2단계 evl_stg_no: "+ evl_stg_no);
        log.info("2단계 rcrt_no: "+ rcrt_no);
        log.info("2단계 evl_stg_cd: "+ evl_stg_cd);

        List<StageEvaluator> stgEvaluators = adminService.selectStgEvaluators(evl_stg_cd, rcrt_no); //모집학과의 평가단계의 평가위원 가져오기
        model.addAttribute("stgEvaluators", stgEvaluators);
        model.addAttribute("evl_stg_cd", evl_stg_cd);
        return stgEvaluators;
    }

    @PostMapping("/updateStgEvaluators")
    @ResponseBody
    public String updateEvaluatorInfo(@RequestParam("evl_no") int evl_no,
                                         @RequestParam("evl_stg_cd") String evl_stg_cd) {
        log.info("3단계 evl_no: "+ evl_no);
        log.info("3단계 evl_stg_cd: "+ evl_stg_cd);
        adminService.updateEvaluatorInfo(evl_no, evl_stg_cd);

        return "redirect:/admin/evaluator_selection";
    }

    @GetMapping("/selectRecruitment")
    public String recruitment(@RequestParam("mtcltn_yd_cd") String mtcltn_yd_cd,
                              @RequestParam("department") String dept_cd,
                              @RequestParam("rcrt_cd") String rcrt_cd,
                              Model model) {
        List<RecruitmentInformation> rcrtInformation = adminService.selectRecruitment(mtcltn_yd_cd, dept_cd, rcrt_cd);
        model.addAttribute("rcrtInformation", rcrtInformation);
        return "/admin/evaluator_selection";
    }

    @GetMapping("/evaluator_info")
    public String list(Model model) {
        List<Evaluator> evaluators = evaluatorService.getAllEvaluator();
        model.addAttribute("evaluators", evaluators);
        return "/admin/evaluator_info";
    }

    @GetMapping("/selectEvaluator")
    public String select(@RequestParam("department") String departmentId,
                         @RequestParam("is_selected") String is_selected,
                         Model model) {
        departmentId = "0".equals(departmentId) ? null : departmentId;
        is_selected = "0".equals(is_selected) ? null : is_selected;

        List<Evaluator> evaluators = evaluatorService.getEvaluatorsBySelect(departmentId, is_selected);
        model.addAttribute("evaluators", evaluators);
        return "/admin/evaluator_info";
    }

    @GetMapping("/deleteEvaluator")
    public String deleteEvaluator(@RequestParam("evl_no") int evl_no) {
        evaluatorService.deleteEvaluator(evl_no);
        return "redirect:/admin/evaluator_info"; // 평가위원 정보 삭제 후 리다이렉트할 페이지를 지정합니다.
    }

    @GetMapping("/insertEvaluator")
    public String insertEvaluator(@RequestParam("evl_nm") String evl_nm,
                                  @RequestParam("gndr_cd") String gndr_cd,
                                  @RequestParam("evl_brdt") String evl_brdt,
                                  @RequestParam("dept_cd") String dept_cd,
                                  @RequestParam("evl_ogdp") String evl_ogdp,
                                  @RequestParam("evl_eml") String evl_eml,
                                  @RequestParam("is_selected") char is_selected,
                                  @RequestParam("evl_tel") String evl_tel,
                                  @RequestParam("addr") String addr,
                                  @RequestParam("addr_detail") String addr_detail,
                                  @RequestParam("bank_nm") String bank_nm,
                                  @RequestParam("act_no") String act_no,
                                  @RequestParam("slry") BigDecimal slry) {


        Evaluator evaluator = new Evaluator();
        evaluator.setEvl_nm(evl_nm);
        evaluator.setGndr_cd(gndr_cd);
        evaluator.setEvl_brdt(evl_brdt);
        evaluator.setDept_cd(dept_cd);
        evaluator.setEvl_ogdp(evl_ogdp);
        evaluator.setEvl_eml(evl_eml);
        evaluator.setIs_selected(is_selected);
        evaluator.setEvl_tel(evl_tel);
        evaluator.setAddr(addr);
        evaluator.setAddr_detail(addr_detail);
        evaluator.setBank_nm(bank_nm);
        evaluator.setAct_no(act_no);
        evaluator.setSlry(slry);

        evaluatorService.insertEvaluator(evaluator);
        return "redirect:/admin/evaluator_info"; // 평가위원 정보 삭제 후 리다이렉트할 페이지를 지정합니다.
    }

    @GetMapping("/updateEvaluator")
    public String updateEvaluator(@RequestParam("evl_no") int evl_no,
                                  @RequestParam("evl_nm") String evl_nm,
                                  @RequestParam("dept_cd") String dept_cd,
                                  @RequestParam("evl_ogdp") String evl_ogdp,
                                  @RequestParam("evl_eml") String evl_eml,
                                  @RequestParam("is_selected") char is_selected,
                                  @RequestParam("evl_tel") String evl_tel,
                                  @RequestParam("addr") String addr,
                                  @RequestParam("addr_detail") String addr_detail,
                                  @RequestParam("bank_nm") String bank_nm,
                                  @RequestParam("act_no") String act_no,
                                  @RequestParam("slry") BigDecimal slry) {

        Evaluator evaluator = new Evaluator();
        evaluator.setEvl_no(evl_no);
        evaluator.setEvl_nm(evl_nm);
        evaluator.setDept_cd(dept_cd);
        evaluator.setEvl_ogdp(evl_ogdp);
        evaluator.setEvl_eml(evl_eml);
        evaluator.setIs_selected(is_selected);
        evaluator.setEvl_tel(evl_tel);
        evaluator.setAddr(addr);
        evaluator.setAddr_detail(addr_detail);
        evaluator.setBank_nm(bank_nm);
        evaluator.setAct_no(act_no);
        evaluator.setSlry(slry);

        evaluatorService.updateEvaluator(evaluator);
        return "redirect:/admin/evaluator_info"; // 평가위원 정보 업데이트 후 리다이렉트할 페이지를 지정합니다.
    }

}