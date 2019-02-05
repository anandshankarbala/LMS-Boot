package com.anand.LmsBoot.rest;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.anand.LmsBoot.model.Book;
import com.anand.LmsBoot.repository.BookRepository;

@RestController
public class BookController {
	
	private static Logger log = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	BookRepository<Book> bookRepository;
	
	@GetMapping("/books")
	public List<Book> getAllBooks(){
		return (List<Book>) bookRepository.findAll();
	}
}
