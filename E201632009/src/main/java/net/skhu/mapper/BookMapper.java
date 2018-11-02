package net.skhu.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import net.skhu.dto.Book;

@Mapper
public interface BookMapper {
	public Book findOne(int id);
	public Book findByStudentNumber(String studentNumber);
	public List<Book> findAll();
	public List<Book> findAllBook();
	public void insert(Book book);
	public void update(Book book);
	public void delete(int id);
}

