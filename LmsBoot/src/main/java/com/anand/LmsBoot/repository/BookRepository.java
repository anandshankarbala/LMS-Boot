package com.anand.LmsBoot.repository;
import org.springframework.data.repository.CrudRepository;

import com.anand.LmsBoot.model.Book;

public interface BookRepository<P> extends CrudRepository<Book, Long> {
}