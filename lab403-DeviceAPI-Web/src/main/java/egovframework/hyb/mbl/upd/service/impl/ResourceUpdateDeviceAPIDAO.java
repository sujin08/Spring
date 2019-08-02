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
package egovframework.hyb.mbl.upd.service.impl;

import java.util.List;

import egovframework.hyb.mbl.upd.service.ResourceUpdateDeviceAPIDefaultVO;
import egovframework.hyb.mbl.upd.service.ResourceUpdateDeviceAPIVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

import org.springframework.stereotype.Repository;


/**  
 * @Class Name : PushAPIDAO.java
 * @Description : PushAPI DAO Class
 * @Modification Information  
 * @
 * @  수정일      수정자                 수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2016.06.20   신용호               최초생성
 * 
 * @author 디바이스 API 실행환경 개발팀
 * @since 2016. 06. 20
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by Ministry of Interior All right reserved.
 */

@Repository("ResourceUpdateDeviceAPIDAO")
public class ResourceUpdateDeviceAPIDAO extends EgovAbstractDAO {

    /**
	 * Push Device 정보 목록을 조회한다.
	 * @param vo - 조회할 정보가 담긴 PushDeviceAPIDefaultVO
	 * @return Push Device 정보 목록
	 * @exception Exception
	 */
    public ResourceUpdateDeviceAPIVO selectResourceUpdateVersionInfo(ResourceUpdateDeviceAPIDefaultVO searchVO) throws Exception {
        return (ResourceUpdateDeviceAPIVO)select("resourceUpdateDeviceAPIDAO.selectResourceUpdateVersionInfo", searchVO);
    }


}
