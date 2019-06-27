package controllers;

import models.Post;
import repos.CategoryRepository;
import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/content/*")
public class ContentController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());

        int contentId = Integer.valueOf(request.getPathInfo().split("/")[1]);

        PostRepository postRepo = new PostRepository();
        request.setAttribute("post", postRepo.getPost(contentId));

        request.getRequestDispatcher("/WEB-INF/views/content.jsp").forward(request, response);

    }
}
