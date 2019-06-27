package controllers;

import repos.CategoryRepository;
import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            CategoryRepository catRepo = new CategoryRepository();
            request.setAttribute("categories", catRepo.getAll());

            PostRepository postRepo = new PostRepository();
            request.setAttribute("posts", postRepo.getAll());

            request.getRequestDispatcher("/WEB-INF/views/dashboard/index.jsp").forward(request, response);
    }
}
