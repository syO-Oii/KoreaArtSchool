package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.entity.CommCd;
import com.maximum.koreaartschool.service.CommCdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/commcd")
public class CommCdController {

    @Autowired
    private CommCdService commCdService;

    @GetMapping
    public List<CommCd> getAllCommCds() {
        return commCdService.getAllCommCds();
    }

    @GetMapping("/{cdSe}")
    public List<CommCd> getCommCdsByCdSe(@PathVariable String cdSe) {
        return commCdService.getCommCdsByCdSe(cdSe);
    }

    @GetMapping("/{cdSe}/{cd}")
    public String getCdNmByCdSeAndCd(@PathVariable String cdSe, @PathVariable String cd) {
        return commCdService.getCdNmByCdSeAndCd(cdSe, cd);
    }

    @PostMapping
    public CommCd createCommCd(@RequestBody CommCd commCd) {
        return commCdService.saveCommCd(commCd);
    }
}

/*
API 엔드포인트에 HTTP 요청을 보내서 구현 테스트

01. 모든 공통 코드 가져오기
GET /api/commcd

02. cdSe로 공통 코드 목록 가져오기
GET /api/commcd/CD0001

03. cdSe와 cd로 한국어 이름(cdNm) 가져오기
GET /api/commcd/CD0001/10

04. 새로운 공통 코드 생성하기
POST /api/commcd
Content-Type: application/json

{
    "cdSe": "CD0001",
    "cd": "30",
    "cdNm": "기타",
    "cdDesc": "기타 설명",
    "isYn": "1"
}
 */
