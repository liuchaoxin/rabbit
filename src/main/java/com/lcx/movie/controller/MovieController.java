package com.lcx.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lcx.movie.damain.Movie;
import com.lcx.movie.service.MovieService;

@Controller
public class MovieController {

	@Autowired
	private  MovieService service;
	
	@RequestMapping("/list")
	public String select(@RequestParam(defaultValue = "1")int pageNum, Model m) {
		PageHelper.startPage(pageNum,3);
		List<Movie> list= service.getlist();
		PageInfo pageInfo = new PageInfo(list);
		m.addAttribute("pg", pageInfo);
		return "list";
	}
}
