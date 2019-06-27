package controllers;

import repos.CategoryRepository;
import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/search")
public class SearchController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());

        String query = request.getParameter("q");

        PostRepository postRepo = new PostRepository();
        request.setAttribute("posts", postRepo.getPostsByTitle(query));


        request.getRequestDispatcher("/WEB-INF/views/search.jsp").forward(request, response);

    }
}
