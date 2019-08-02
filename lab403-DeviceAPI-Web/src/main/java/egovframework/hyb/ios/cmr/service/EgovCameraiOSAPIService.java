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
package egovframework.hyb.ios.cmr.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

/**  
 * @Class Name : EgovCameraiOSAPIService.java
 * @Description : EgovCameraiOSAPIService Class
 * @Modification Information  
 * @
 * @  수정일			수정자		수정내용
 * @ ---------		---------	-------------------------------
 * @ 2012. 7. 23.		이율경		최초생성
 * @ 2012. 8. 03.  		이해성       커스터마이징
 * 
 * @author 디바이스 API 개발환경 팀
 * @since 2012. 7. 23.
 * @version 1.0
 * @see
 * 
 */
public interface EgovCameraiOSAPIService {
	
	/**
	 * 이미지를 등록한다.
	 * @param vo - 등록할 정보가 담긴 CameraAPIVO
	 * @return void형
	 * @exception Exception
	 */
	public int insertCameraPhotoAlbum(CameraiOSAPIVO vo, int fileSn) throws Exception;
	
	/**
	 * 이미지 파일을 등록한다.
	 * @param vo - 등록할 정보가 담긴 CameraAPIVO
	 * @return void형
	 * @exception Exception
	 */
	public int insertCameraPhotoAlbumFile(CameraiOSAPIFileVO vo) throws Exception;
    
    /**
	 * 이미지를 수정한다.
	 * @param vo - 등록할 정보가 담긴 CameraAPIVO
	 * @return void형
	 * @exception Exception
	 */
	public int updateCameraPhotoAlbumFile(CameraiOSAPIVO vo, int fileSn) throws Exception;
    
    /**
	 * 이미지를 삭제한다.
	 * @param vo - 삭제할 정보가 담긴 CameraAPIVO
	 * @return void형 
	 * @exception Exception
	 */
	public boolean deleteCameraPhotoAlbum(CameraiOSAPIVO vo) throws Exception;
    
    /**
	 * 이미지를 조회한다.
	 * @param vo - 조회할 정보가 담긴 CameraAPIVO
	 * @return 조회한 이미지 정보
	 * @exception Exception
	 */
	public CameraiOSAPIVO selectCameraPhotoAlbum(CameraiOSAPIVO vo) throws Exception;
    
    /**
	 * 이미지 목록을 조회한다.
	 * @param VO - 조회할 정보가 담긴 CameraAPIVO
	 * @return 이미지 정보 목록
	 * @exception Exception
	 */
	public List<?> selectCameraPhotoAlbumList(CameraiOSAPIDefaultVO searchVO) throws Exception;
	
	/**
	 * 이미지 파일을 조회한다.
	 * @param VO - 조회할 정보가 담긴 CameraIOSAPIFileVO
	 * @return 파일 정보
	 * @exception Exception
	 */
	public boolean selectImageFileInf(HttpServletResponse response, CameraiOSAPIFileVO vo) throws Exception;
	
	/**
	 * 이미지 제목 중복을 조회한다.
	 * @param vo - 조회할 정보가 담긴 CameraAPIVO
	 * @return 조회한 이미지 정보
	 * @exception Exception
	 */
	public CameraiOSAPIFileVO selectCameraPhotoAlbumPhotoSj(CameraiOSAPIVO vo) throws Exception;
}  
