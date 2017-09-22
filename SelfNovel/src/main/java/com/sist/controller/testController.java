package com.sist.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sn.codes.dao.CodesDao;
import com.sn.codes.domain.CodesVO;
import com.sn.img.dao.ImgDao;
import com.sn.img.domain.ImgVO;

/**
 * testController 
 * detail : dao테스트하고 싶은데 main에서 autowired로 추가하면 자꾸 null에러떠서 걍 만든 컨트롤러
 * 최초작성: 2017-09-21
 * @author @author MinSeok <dev.edwinner@gmail.com>
 *
 */
@Controller
public class testController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	ImgDao imgDao;
	@Autowired
	CodesDao codesDao;
	
	/**
	 * imgTest
	 */
	@RequestMapping(value = "/img.do", method = RequestMethod.GET)
	public String do_save(Locale locale, Model model) {
		ImgVO dto = new ImgVO();
		
		dto.setImg_id(2);
		dto.setImg_num(2);
		dto.setImg_org_nm("test2");
		dto.setImg_path("test2");
		dto.setImg_sv_nm("test2");
		dto.setImg_use_yn(0);
		
		log.debug("==========do_save==========");
		imgDao.do_save(dto); 
		
		return "home";
	}
	
	@RequestMapping(value = "/imgSearch.do", method = RequestMethod.GET)
	public String do_search(Locale locale, Model model) {
		ImgVO dto = new ImgVO();
		
		dto.setImg_num(1);
		
		List<ImgVO> list = (List<ImgVO>)imgDao.do_search(dto);
		log.debug("다건조회: "+list.toString());
		
		dto.setImg_id(1);
		ImgVO resultDTO = (ImgVO)imgDao.do_searchOne(dto);
		log.debug("단건조회: "+resultDTO.toString());
		
		return "home";
	}
	
	/**
	 * imgTest
	 */
	@RequestMapping(value = "/codes.do", method = RequestMethod.GET)
	public String codes(Locale locale, Model model) {
		CodesVO dto = new CodesVO();
		dto.setMst_cd_id("C001");
		
		List<CodesVO> list = (List<CodesVO>)codesDao.do_search(dto);
		log.debug("다건조회: "+list.toString());
		
		dto.setDtl_cd_id("20");
		CodesVO resultDTO = (CodesVO)codesDao.do_searchOne(dto);
		log.debug("단건조회: "+resultDTO.toString());
		
		return "home";
	}
}
