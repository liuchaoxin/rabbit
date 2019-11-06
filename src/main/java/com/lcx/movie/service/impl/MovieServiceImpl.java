package com.lcx.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lcx.movie.damain.Movie;
import com.lcx.movie.dao.MovieMapper;
import com.lcx.movie.service.MovieService;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	private MovieMapper mapper;

	@Override
	public List<Movie> getlist() {
		
		return mapper.getlist();
	}
}
