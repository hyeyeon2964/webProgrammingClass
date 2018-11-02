package net.skhu.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.skhu.dto.Publisher;

@Mapper
public interface PublisherMapper {
    List<Publisher> findAll();
}
