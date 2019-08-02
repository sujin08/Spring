/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.hyb.ios.itf.web;

import egovframework.hyb.ios.itf.service.EgovInterfaceiOSAPIService;
import egovframework.hyb.ios.itf.service.InterfaceiOSAPIDefaultVO;
import egovframework.hyb.ios.itf.service.InterfaceiOSAPIVO;

import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**  
 * @Class Name : EgovInterfaceiOSAPIController
 * @Description : EgovInterfaceiOSAPIController Controller Class
 * @Modification Information  
 * @
 * @  수정일                 수정자                 수정내용
 * @ 
 * @ 2012.07.11    이한철                  최초생성
 * 
 * @author 모바일 디바이스 API 팀
 * @since 2012. 07. 11
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class EgovInterfaceiOSAPIController {

    /** EgovInterfaceAPIService */
    @Resource(name = "EgovInterfaceiOSAPIService")
    private EgovInterfaceiOSAPIService egovInterfaceAPIService;

    /** propertiesService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;

    /**
     * 회원가입 정보를 등록한다.
     * 
     * @param searchVO
     *            - 등록할 정보가 담긴 InterfaceAPIDefaultVO
     * @param status
     * @return "forward:/itf/addInterfaceInfo.do"
     * @exception Exception
     */
    @RequestMapping("/itf/addInterfaceiOSInfo.do")
    public ModelAndView addInterfaceInfo(
            @ModelAttribute("searchInterfaceVO") InterfaceiOSAPIDefaultVO searchVO,
            InterfaceiOSAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        ModelAndView jsonView = new ModelAndView("jsonView");

        int cnt = egovInterfaceAPIService
                .selectInterfaceInfoListTotCnt(interfaceVO);

        if (cnt > 0) {
            jsonView.addObject("resultState", "FAIL");
            jsonView.addObject("resultMessage", "ID가 존재합니다.");
        } else {
            int success = egovInterfaceAPIService
                    .insertInterfaceInfo(interfaceVO);
            if (success > 0) {
                jsonView.addObject("resultState", "OK");
                jsonView.addObject("resultMessage", "가입에 성공하였습니다.");
            } else {
                jsonView.addObject("resultState", "FAIL");
                jsonView.addObject("resultMessage", "가입에 실패하였습니다.");
            }
        }

        return jsonView;
    }

    /**
     * 로그인을 한다.
     * 
     * @param interfaceVO
     *            - 로그인 할 정보가 담긴 InterfaceiOSAPIVO
     * @param status
     * @return "forward:/itf/logIn.do"
     * @exception Exception
     */
    @RequestMapping("/itf/logIniOS.do")
    public ModelAndView logIn(
            @ModelAttribute("searchInterfaceVO") InterfaceiOSAPIDefaultVO searchVO,
            InterfaceiOSAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        ModelAndView jsonView = new ModelAndView("jsonView");

        InterfaceiOSAPIVO interfaceiOSAPIVO = null;
        interfaceiOSAPIVO = egovInterfaceAPIService
                .selectInterfaceInfo(interfaceVO);

        if (interfaceVO.getUserId().equals(interfaceiOSAPIVO.getUserId())) {
            jsonView.addObject("resultState", "OK");
            jsonView.addObject("resultMessage", "로그인에 성공하였습니다.");
        } else {
            jsonView.addObject("resultState", "FAIL");
            jsonView.addObject("resultMessage", "로그인에 실패하였습니다.");
        }

        return jsonView;
    }

    /**
     * 회원탈퇴 한다.
     * 
     * @param interfaceVO
     *            - 탈퇴 할 정보가 담긴 InterfaceiOSAPIVO
     * @param status
     * @return "forward:/itf/withdrawal.do"
     * @exception Exception
     */
    @RequestMapping("/itf/withdrawaliOS.do")
    public ModelAndView withdrawal(
            @ModelAttribute("searchInterfaceVO") InterfaceiOSAPIDefaultVO searchVO,
            InterfaceiOSAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        ModelAndView jsonView = new ModelAndView("jsonView");

        int cnt = egovInterfaceAPIService.deleteInterfaceInfo(interfaceVO);

        if (cnt > 0) {
            jsonView.addObject("resultState", "OK");
            jsonView.addObject("resultMessage", "탈퇴에 성공하였습니다.");
        } else {
            jsonView.addObject("resultState", "FAIL");
            jsonView.addObject("resultMessage", "탈퇴에 실패하였습니다.");
        }

        return jsonView;
    }
}
