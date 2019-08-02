package egovframework.hyb.mbl.stm.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.hyb.add.mda.service.MediaAndroidAPIVO;
import egovframework.hyb.mbl.stm.service.StreamingMediaAPIFileVO;
import egovframework.hyb.mbl.stm.service.StreamingMediaAPIVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**  
 * @Class Name : StreamingMediaAPIDAO.java
 * @Description : StreamingMediaAPIDAO Class
 * @Modification Information  
 * @
 * @  수정일            수정자        수정내용
 * @ ---------        ---------    -------------------------------
 * @ 2016. 7. 14.     장성호        최초생성
 * 
 * @author 디바이스 API 실행환경 팀
 * @since 2016. 7. 14.
 * @version 1.0
 * @see
 * 
 */
@Repository("StreamingMediaAPIDAO")
public class StreamingMediaAPIDAO extends EgovAbstractDAO {
    
    /**
     * 미디어 목록을 조회한다.
     * @param VO - 조회할 정보가 담긴 StreamingMediaAPIVO
     * @return 조회 목록
     * @exception Exception
     */
    public List<?> selectMediaInfoList(StreamingMediaAPIVO searchVO) throws Exception {
        return list("streamingMediaAPIDAO.selectMediaInfoList", searchVO);
    }
    
    /**
     * 미디어 파일 정보를 조회한다.
     * @param vo - 조회할 정보가 담긴 StreamingMediaAPIVO
     * @return 이미지 파일 정보
     * @exception Exception
     */
    public StreamingMediaAPIFileVO selectMediaFileInfo(StreamingMediaAPIFileVO vo) throws Exception {
        return (StreamingMediaAPIFileVO)select("streamingMediaAPIDAO.selectMediaFileInfo", vo);
    }
    
    
    public int updateMediaInfoRevivCo(StreamingMediaAPIVO vo) throws Exception {
        return (Integer)update("streamingMediaAPIDAO.updateMediaInfoRevivCo", vo);
    }
}
