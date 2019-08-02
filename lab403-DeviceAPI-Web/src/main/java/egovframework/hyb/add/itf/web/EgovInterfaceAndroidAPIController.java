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
package egovframework.hyb.add.itf.web;

import egovframework.hyb.add.itf.service.EgovInterfaceAndroidAPIService;
import egovframework.hyb.add.itf.service.InterfaceAndroidAPIDefaultVO;
import egovframework.hyb.add.itf.service.InterfaceAndroidAPIVO;

import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**  
 * @Class Name : EgovInterfaceAndroidAPIController
 * @Description : EgovInterfaceAndroidAPIController Controller Class
 * @Modification Information  
 * @
 * @  수정일                 수정자                 수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2012.07.09    나신일                  최초생성
 * 
 * @author 모바일 디바이스 API 팀
 * @since 2012. 07. 09
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class EgovInterfaceAndroidAPIController {

    /** EgovInterfaceAPIService */
    @Resource(name = "EgovInterfaceAndroidAPIService")
    private EgovInterfaceAndroidAPIService egovInterfaceAPIService;

    /** propertiesService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;

    /**
     * 회원가입 정보를 등록한다.
     * 
     * @param searchVO
     *            - 등록할 정보가 담긴 InterfaceAPIDefaultVO
     * @param interfaceVO
     * @return MedelAndView(Json)
     * @exception Exception
     */
    @RequestMapping("/itf/addInterfaceInfo.do")
    public ModelAndView addInterfaceInfo(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
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
     * 회원가입 정보를 등록한다.
     * 
     * @param searchVO
     *            - 등록할 정보가 담긴 InterfaceAPIDefaultVO
     * @param InterfaceAndroidAPIVO
     * @return InterfaceAndroidAPIVO (XML)
     * @exception Exception
     */
    @RequestMapping("/itf/xml/addInterfaceInfo.do")
    public @ResponseBody
    InterfaceAndroidAPIVO addInterfaceInfoXml(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        int cnt = egovInterfaceAPIService
                .selectInterfaceInfoListTotCnt(interfaceVO);

        InterfaceAndroidAPIVO interfaceAPIVO = new InterfaceAndroidAPIVO();

        if (cnt > 0) {
            interfaceAPIVO.setResultState("FAIL");
            interfaceAPIVO.setResultMessage("ID가 존재합니다.");
        } else {
            int success = egovInterfaceAPIService
                    .insertInterfaceInfo(interfaceVO);
            if (success > 0) {
                interfaceAPIVO.setResultState("OK");
                interfaceAPIVO.setResultMessage("가입에 성공하였습니다.");
            } else {
                interfaceAPIVO.setResultState("FAIL");
                interfaceAPIVO.setResultMessage("가입에 실패하였습니다.");
            }
        }

        return interfaceAPIVO;
    }

    /**
     * 로그인을 한다.
     * 
     * @param interfaceVO
     *            - 로그인 할 정보가 담긴 InterfaceAndroidAPIVO
     * @param status
     * @return MedelAndView(Json)
     * @exception Exception
     */
    @RequestMapping("/itf/logIn.do")
    public ModelAndView logIn(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        ModelAndView jsonView = new ModelAndView("jsonView");

        InterfaceAndroidAPIVO interfaceAndroidAPIVO = null;
        interfaceAndroidAPIVO = egovInterfaceAPIService
                .selectInterfaceInfo(interfaceVO);

        if (interfaceAndroidAPIVO == null) {            
            int cnt = egovInterfaceAPIService.selectInterfaceInfoListTotCnt(interfaceVO);
            if(cnt > 0) {
                jsonView.addObject("resultState", "FAIL");
                jsonView.addObject("resultMessage", "패스워드가 일치하지 않습니다.");
            } else {
                jsonView.addObject("resultState", "FAIL");
                jsonView.addObject("resultMessage", "아이디가 존재하지 않습니다.");
            }
            
        } else {
            jsonView.addObject("resultState", "OK");
            jsonView.addObject("resultMessage", "로그인에 성공하였습니다.");
        }

        return jsonView;
    }

    /**
     * 로그인을 한다.
     * 
     * @param interfaceVO
     *            - 로그인 할 정보가 담긴 InterfaceAndroidAPIVO
     * @param InterfaceAndroidAPIVO
     * @return InterfaceAndroidAPIVO (XML)
     * @exception Exception
     */
    @RequestMapping("/itf/xml/logIn.do")
    public @ResponseBody
    InterfaceAndroidAPIVO logInXml(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        InterfaceAndroidAPIVO interfaceAndroidAPIVO = null;
        interfaceAndroidAPIVO = egovInterfaceAPIService
                .selectInterfaceInfo(interfaceVO);

        if (interfaceAndroidAPIVO == null) {
            interfaceAndroidAPIVO = new InterfaceAndroidAPIVO();
            int cnt = egovInterfaceAPIService.selectInterfaceInfoListTotCnt(interfaceVO);
            if(cnt > 0) {
                interfaceAndroidAPIVO.setResultState("FAIL");
                interfaceAndroidAPIVO.setResultMessage("패스워드가 일치하지 않습니다.");
            } else {
                interfaceAndroidAPIVO.setResultState("FAIL");
                interfaceAndroidAPIVO.setResultMessage("아이디가 존재하지 않습니다.");
            }
            

        } else {
            interfaceAndroidAPIVO.setResultState("OK");
            interfaceAndroidAPIVO.setResultMessage("로그인에 성공하였습니다.");
        }

        return interfaceAndroidAPIVO;
    }

    /**
     * 회원탈퇴 한다.
     * 
     * @param interfaceVO
     *            - 탈퇴 할 정보가 담긴 InterfaceAndroidAPIVO
     * @param status
     * @return MedelAndView(Json)
     * @exception Exception
     */
    @RequestMapping("/itf/withdrawal.do")
    public ModelAndView withdrawal(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
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

    /**
     * 회원탈퇴 한다.
     * 
     * @param interfaceVO
     *            - 탈퇴 할 정보가 담긴 InterfaceAndroidAPIVO
     * @param InterfaceAndroidAPIVO
     * @return InterfaceAndroidAPIVO (XML)
     * @exception Exception
     */
    @RequestMapping("/itf/xml/withdrawal.do")
    public @ResponseBody
    InterfaceAndroidAPIVO withdrawalXml(
            @ModelAttribute("searchVO") InterfaceAndroidAPIDefaultVO searchVO,
            InterfaceAndroidAPIVO interfaceVO, BindingResult bindingResult,
            Model model, SessionStatus status) throws Exception {

        int cnt = egovInterfaceAPIService.deleteInterfaceInfo(interfaceVO);

        InterfaceAndroidAPIVO interfaceAPIVO = new InterfaceAndroidAPIVO();

        if (cnt > 0) {
            interfaceAPIVO.setResultState("OK");
            interfaceAPIVO.setResultMessage("탈퇴에 성공하였습니다.");
        } else {
            interfaceAPIVO.setResultState("FAIL");
            interfaceAPIVO.setResultMessage("탈퇴에 실패하였습니다.");
        }

        return interfaceAPIVO;
    }
}
