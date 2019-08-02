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
package egovframework.hyb.ios.cmr.web;

import java.util.List;

import egovframework.hyb.ios.cmr.service.CameraiOSAPIDefaultVO;
import egovframework.hyb.ios.cmr.service.CameraiOSAPIFileVO;
import egovframework.hyb.ios.cmr.service.CameraiOSAPIVO;
import egovframework.hyb.ios.cmr.service.CameraiOSAPIXmlVO;
import egovframework.hyb.ios.cmr.service.EgovCameraiOSAPIService;
import egovframework.hyb.ios.cmr.service.impl.EgovCameraiOSMngUtil;
import egovframework.rte.fdl.property.EgovPropertyService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

/**  
 * @Class Name : EgovCameraIOSAPIController.java
 * @Description : EgovCameraIOSAPIController Class
 * @Modification Information  
 * @
 * @  수정일			수정자		수정내용
 * @ ---------		---------	-------------------------------
 * @ 2012. 7. 23.		이율경		최초생성
 * @ 2012. 8. 03.  		이해성      커스터마이징
 * @ 2012. 8. 13.  		이해성      인코딩 관련 소스 추가
 * 
 * @author 디바이스 API 개발환경 팀
 * @since 2012. 8. 3.
 * @version 1.0
 * @see
 * 
 */
@Controller
public class EgovCameraiOSAPIController {

	/** EgovCameraIOSAPIService */
    @Resource(name = "EgovCameraiOSAPIService")
    private EgovCameraiOSAPIService egovCameraiOSAPIService;
    
    /** propertiesService */
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertiesService;
    
    /** EgovFileMngUtil */
    @Resource(name = "EgovCameraiOSMngUtil")
	private EgovCameraiOSMngUtil egovCameraiOSMngUtil;
    
    /**
	 * 어플리케이션 실행 시, 서버 설정
	 * @return boolean
	 * @exception Exception
	 */
    @RequestMapping("/cmr/htmlLoadiOS.do")
	public @ResponseBody CameraiOSAPIXmlVO htmlLoad(SessionStatus status) 
    throws Exception{
		
    	CameraiOSAPIXmlVO cameraiOSAPIXmlVO = new CameraiOSAPIXmlVO();
    	
    	cameraiOSAPIXmlVO.setResultState("OK");
    	cameraiOSAPIXmlVO.setServerContext(propertiesService.getString("serverContext"));
    	cameraiOSAPIXmlVO.setDownloadContext(propertiesService.getString("downloadContext"));
		
		return cameraiOSAPIXmlVO;
	}
    
    /**
	 * 이미지 파일을 등록한다. (업로드)
	 * @param file - 이미지 파일 정보가 담긴 MultipartFile
	 * @param fileVO - 목록 조회조건 정보가 담긴 CameraIOSAPIVO
	 * @return boolean
	 * @exception Exception
	 */
    @RequestMapping("/cmr/photoAlbumImageUploadiOS.do")
	public @ResponseBody boolean fileUpload(@RequestParam("file") MultipartFile file, CameraiOSAPIVO vo, 
			HttpServletRequest request) throws Exception{
		
		if (!file.isEmpty()) {
			
			String decodeName = java.net.URLDecoder.decode(vo.getPhotoSj(),"utf-8");
			vo.setPhotoSj(decodeName);
			CameraiOSAPIFileVO fileVO = egovCameraiOSMngUtil.writeUploadedFile(file);
			
			egovCameraiOSAPIService.insertCameraPhotoAlbum(vo, fileVO.getFileSn());
			
			return true;
		} else {
			
			return false;
		}
	}
    
    /**
	 * 이미지 파일을 수정한다. (업로드)
	 * @param file - 이미지 파일 정보가 담긴 MultipartFile
	 * @param fileVO - 목록 조회조건 정보가 담긴 CameraIOSAPIVO
	 * @return boolean
	 * @exception Exception
	 */
    @RequestMapping("/cmr/photoAlbumImageUpdateiOS.do")
	public @ResponseBody boolean fileUpdate(@RequestParam("file") MultipartFile file, CameraiOSAPIVO vo, 
			HttpServletRequest request) throws Exception{
		
		if (!file.isEmpty()) {
			
			CameraiOSAPIFileVO fileVO = egovCameraiOSMngUtil.writeUploadedFile(file);
			egovCameraiOSAPIService.updateCameraPhotoAlbumFile(vo, fileVO.getFileSn());
			
			return true;
		} else {
			
			return false;
		}
	}
    
    /**
	 * 이미지 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 NetworkAPIDefaultVO
	 * @return jsonView
	 * @exception Exception
	 */
    @SuppressWarnings("unchecked")
	@RequestMapping(value="/cmr/cameraPhotoAlbumListiOS.do")
    public @ResponseBody CameraiOSAPIXmlVO selectCameraPhotoAlbumList(
    		@ModelAttribute("searchVO") CameraiOSAPIDefaultVO searchVO,
    		SessionStatus status)
            throws Exception {
 
    	searchVO.setFirstIndex((searchVO.getPageIndex()-1)*10);
		List<CameraiOSAPIFileVO> photoAlbumList = (List<CameraiOSAPIFileVO>) egovCameraiOSAPIService.selectCameraPhotoAlbumList(searchVO);
		
		CameraiOSAPIXmlVO cameraiOSAPIVOList = new CameraiOSAPIXmlVO();
		cameraiOSAPIVOList.setCameraiOSAPIVOList(photoAlbumList);
		cameraiOSAPIVOList.setResultState("OK");
		return cameraiOSAPIVOList;
    }
    
    /**
	 * 이미지 상세 정보를 조회한다.
	 * @param cameraVO - 조회할 정보가 담긴 CameraAPIVO
	 * @param searchVO - 목록 조회조건 정보가 담긴 CameraAPIDefaultVO
	 * @param bindingResult
	 * @param status
	 * @return jsonView
	 * @exception Exception
	 */
    @RequestMapping(value="/cmr/cameraPhotoAlbumDetailiOS.do")
    public @ResponseBody CameraiOSAPIXmlVO selectPhotoAlbum( CameraiOSAPIVO vo,
    		SessionStatus status)
            throws Exception {
    	
    	CameraiOSAPIVO cameraVO = egovCameraiOSAPIService.selectCameraPhotoAlbum(vo);
    	
    	CameraiOSAPIXmlVO cameraiOSAPIXmlVO = new CameraiOSAPIXmlVO();
    	cameraiOSAPIXmlVO.setCameraiOSAPIVO(cameraVO);
    	cameraiOSAPIXmlVO.setResultState("OK");
    	return cameraiOSAPIXmlVO;
    }
    
    /**
	 * 이미지 파일을 조회한다.
	 * @param fileVO - 조회할 정보가 담긴 CameraIOSAPIFileVO
	 * @param model
	 * @param response
	 * @return jsonView
	 * @exception Exception
	 */
    @RequestMapping("/cmr/getImageiOS.do")
    public void getImageInf(@RequestParam("fileSn") String fileSn, ModelMap model,
    		HttpServletResponse response) throws Exception {

    	if(fileSn != null && "".equals(fileSn) == false) {
    		
			CameraiOSAPIFileVO vo = new CameraiOSAPIFileVO();
			vo.setFileSn(Integer.parseInt(fileSn));
		
			egovCameraiOSAPIService.selectImageFileInf(response, vo);
    	}
    }
    
    /**
	 * 이미지를 삭제한다.
	 * @param sn - 조회할 정보가 담긴 String
	 * @return jsonView
	 * @exception Exception
	 */
    @RequestMapping(value="/cmr/deleteCameraPhotoAlbumiOS.do")
    public @ResponseBody CameraiOSAPIXmlVO deleteCameraPhotoAlbum( CameraiOSAPIVO vo,
    		SessionStatus status)
            throws Exception {
 
    	CameraiOSAPIXmlVO cameraiOSAPIXmlVO = new CameraiOSAPIXmlVO();
    		
    	CameraiOSAPIVO cameraVO = egovCameraiOSAPIService.selectCameraPhotoAlbum(vo);
    	if(cameraVO == null) {
    		cameraiOSAPIXmlVO.setDeleteCheck("false");
    	}
    	else
    	{
    		Boolean deleteCheck = egovCameraiOSAPIService.deleteCameraPhotoAlbum(cameraVO);
        	if(!deleteCheck) {
        		cameraiOSAPIXmlVO.setDeleteCheck("false");
        	}
        	else
        	{
        		cameraiOSAPIXmlVO.setDeleteCheck("true");
        	}
    	}
    	
    	cameraiOSAPIXmlVO.setResultState("OK");
    	
    	return cameraiOSAPIXmlVO;
    }
    
    /**
	 * 이미지 제목 중복을 조회한다.
	 * @param cameraVO - 조회할 정보가 담긴 CameraAPIVO
	 * @param bindingResult
	 * @param status
	 * @return jsonView
	 * @exception Exception
	 */
    @RequestMapping(value="/cmr/cameraPhotoAlbumCheckiOS.do")
    public @ResponseBody CameraiOSAPIXmlVO selectPhotoAlbumPhoSj( CameraiOSAPIVO vo,
    		SessionStatus status)
            throws Exception {
    	CameraiOSAPIFileVO cameraVO = egovCameraiOSAPIService.selectCameraPhotoAlbumPhotoSj(vo);
    	CameraiOSAPIVO newVO = new CameraiOSAPIVO();
    	if(cameraVO != null) {
    		newVO.setSn(String.format("%d", cameraVO.getSn()));
    	}
    	CameraiOSAPIXmlVO cameraiOSAPIXmlVO = new CameraiOSAPIXmlVO();
    	cameraiOSAPIXmlVO.setResultState("OK");
    	cameraiOSAPIXmlVO.setCameraiOSAPIVO(newVO);
    	
    	return cameraiOSAPIXmlVO;
    }
}
