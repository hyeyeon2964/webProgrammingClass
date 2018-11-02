package net.skhu.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.skhu.mapper.CategoryMapper;
import net.skhu.dto.Category;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@Autowired CategoryMapper categoryMapper;
	
    @RequestMapping("list")
    public String list(Model model) {
        List<Category> categorys = categoryMapper.findAll();
        model.addAttribute("categorys", categorys);
        return "category/list";
    }
	
	

}
