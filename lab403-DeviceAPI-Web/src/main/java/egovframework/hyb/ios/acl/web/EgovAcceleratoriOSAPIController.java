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
package egovframework.hyb.ios.acl.web;

import java.util.List;

import egovframework.hyb.ios.acl.service.AcceleratoriOSAPIDefaultVO;
import egovframework.hyb.ios.acl.service.AcceleratoriOSAPIVO;
import egovframework.hyb.ios.acl.service.EgovAcceleratoriOSAPIService;
import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**  
 * @Class Name : EgovAcceleratoriOSAPIController
 * @Description : EgovAcceleratoriOSAPIController Class
 * @Modification Information  
 * @
 * @  수정일         수정자                 수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2012.07.23    서형주                  최초생성
 *   2012.08.16    서준식                 json 버전으로 변경 
 * 
 * @author Device API 실행환경팀
 * @since 2012. 07. 23
 * @version 1.0
 * @see
 * 
 */

@Controller
public class EgovAcceleratoriOSAPIController {

	/** EgovAcceleratorAPIService */
	@Resource(name = "EgovAcceleratoriOSAPIService")
	private EgovAcceleratoriOSAPIService egovAcceleratoriOSAPIService;

	/** propertiesService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/**
	 * 가속도 정보 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 AcceleratoriOSAPIDefaultVO
	 * @param model
	 * @return "/acl/acceleratorInfoList.do"
	 * @exception Exception
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/acl/acceleratorInfoList.do")
	public ModelAndView selectAcceleratorInfoXMLList(@ModelAttribute("searchVO") AcceleratoriOSAPIDefaultVO searchVO, ModelMap model) throws Exception {
		ModelAndView jsonView = new ModelAndView("jsonView");

		List<AcceleratoriOSAPIVO> acceleratorInfoList = (List<AcceleratoriOSAPIVO>) egovAcceleratoriOSAPIService.selectAcceleratorInfoList(searchVO);

		jsonView.addObject("acceleratorInfoList", acceleratorInfoList);
		jsonView.addObject("resultState", "OK");
		return jsonView;
	}

	/**
	 * 가속도 정보를 등록한다.
	 * @param searchVO - 등록할 정보가 담긴 AcceleratoriOSAPIDefaultVO
	 * @param searchVO - 목록 조회조건 정보가 담긴 AcceleratoriOSAPIDefaultVO
	 * @param status
	 * @return "forward:/acl/addAcceleratorInfo.do"
	 * @exception Exception
	 */
	@SuppressWarnings("unused")
	@RequestMapping("/acl/addAcceleratorInfo.do")
	public ModelAndView addAcceleratorInfoXml(@ModelAttribute("searchVO") AcceleratoriOSAPIDefaultVO searchVO, AcceleratoriOSAPIVO acceleratorVO, BindingResult bindingResult,
			Model model, SessionStatus status) throws Exception {
		ModelAndView jsonView = new ModelAndView("jsonView");

		AcceleratoriOSAPIVO acceleratorAPIVO = new AcceleratoriOSAPIVO();

		int success = egovAcceleratoriOSAPIService.insertAcceleratorInfo(acceleratorVO);

		if (success > 0) {
			jsonView.addObject("resultState", "OK");

		} else {
			jsonView.addObject("resultState", "FAIL");

		}

		return jsonView;
	}

	/**
	 * 가속도 정보 목록을 삭제한다.
	 * @param sampleVO - 삭제할 정보가 담긴 VO
	 * @param searchVO - 목록 조회조건 정보가 담긴 VO
	 * @param status
	 * @return "forward:/acl/withdrawal.do"
	 * @exception Exception
	 */
	@SuppressWarnings("unused")
	@RequestMapping("/acl/withdrawal.do")
	public ModelAndView withdrawalXml(@ModelAttribute("searchVO") AcceleratoriOSAPIDefaultVO searchVO, AcceleratoriOSAPIVO acceleratorVO, BindingResult bindingResult, Model model,
			SessionStatus status) throws Exception {
		ModelAndView jsonView = new ModelAndView("jsonView");

		int cnt = egovAcceleratoriOSAPIService.deleteAcceleratorInfo(acceleratorVO);

		AcceleratoriOSAPIVO acceleratorAPIVO = new AcceleratoriOSAPIVO();

		if (cnt > 0) {
			jsonView.addObject("resultState", "OK");

		} else {
			jsonView.addObject("resultState", "FAIL");

		}

		return jsonView;
	}

}
