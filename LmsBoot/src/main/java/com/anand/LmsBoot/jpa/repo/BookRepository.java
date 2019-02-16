package com.anand.LmsBoot.jpa.repo;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.anand.LmsBoot.entity.Book;

public interface BookRepository<P> extends CrudRepository<Book, Long> {
	List<Book> findByBookTitle(String bookTitle);
	
}