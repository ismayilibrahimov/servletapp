package controllers;

import repos.CategoryRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/contact")
public class ContactController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);

    }
}
