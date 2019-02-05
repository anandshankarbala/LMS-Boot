package com.anand.LmsBoot.rest;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		log.debug("get all books");
		return (List<Book>) bookRepository.findAll();
	}
	
	@RequestMapping(method=RequestMethod.GET,value="/getBooksByTitle/{bookTitle}")
	public List<Book> getBooksByName(@PathVariable("bookTitle") String bookTitle){
		log.debug("get all books bookTitle");
		return (List<Book>) bookRepository.findByBookTitle(bookTitle);
	}
}
