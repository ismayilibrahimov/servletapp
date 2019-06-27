package controllers;

import repos.CategoryRepository;
import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cat/*")
public class CategoryController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());

        int catId = Integer.valueOf(request.getPathInfo().split("/")[1]);

        PostRepository posts = new PostRepository();
        request.setAttribute("posts", posts.getPostsByCatId(catId));

        request.getRequestDispatcher("/WEB-INF/views/category.jsp").forward(request, response);

    }
}
