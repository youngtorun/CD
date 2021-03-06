package zyr.cd.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;
import zyr.cd.domain.Category;
import zyr.cd.service.CategoryService;

/**
 * 分类模块WEB层
 * @singer qdmmy6
 *
 */
public class CategoryServlet extends BaseServlet {
	private CategoryService categoryService = new CategoryService();	
	
	/**
	 * 查询所有分类
	 */
	public String findAll(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		 * 1. 通过service得到所有的分类
		 * 2. 保存到request中，转发到left.jsp
		 */
		List<Category> parents = categoryService.findAll();

		req.setAttribute("parents", parents);
		return "/jsps/left.jsp";
	}
 }
