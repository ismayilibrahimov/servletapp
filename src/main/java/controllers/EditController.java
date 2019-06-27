package controllers;

import repos.CategoryRepository;
import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;

@WebServlet("/dashboard/edit/*")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10)
public class EditController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int contentId = Integer.valueOf(request.getPathInfo().split("/")[1]);

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());

        PostRepository postRepo = new PostRepository();
        request.setAttribute("post", postRepo.getPost(contentId));

        int category = Integer.valueOf(request.getParameter("category"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        Part image = request.getPart("image");
        String fileName = image.getSubmittedFileName();
        InputStream inputStream = image.getInputStream();
        HttpSession session = request.getSession();
        String[] contentTypes = {"image/jpeg", "image/png", "zero"};
        String contentType = image.getContentType();

        if(image.getSize() == 0) {
            contentType = "zero";
        }

        String path = getServletContext().getRealPath("") + "uploads" + File.separator;

        String savedImage;

        if(Arrays.asList(contentTypes).contains(contentType)){
            if(fileName.length() > 0) {
                Files.copy(inputStream, Paths.get(path + fileName), StandardCopyOption.REPLACE_EXISTING);
                savedImage = fileName;
            } else {
                savedImage = postRepo.getPost(contentId).getImage();
            }

            if(postRepo.updatePost(contentId, category, title, content, savedImage) > 0){
                session.setAttribute("updated", "Record updated successfully!");
            } else {
                session.setAttribute("updated", "Operation failed!");
            }

            response.sendRedirect(request.getContextPath() + "/dashboard");

        } else {
            request.setAttribute("error", "only JPEG OR PNG allowed!");
            request.getRequestDispatcher("/WEB-INF/views/dashboard/edit.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int contentId = Integer.valueOf(request.getPathInfo().split("/")[1]);

        CategoryRepository catRepo = new CategoryRepository();
        request.setAttribute("categories", catRepo.getAll());

        PostRepository postRepo = new PostRepository();
        request.setAttribute("post", postRepo.getPost(contentId));

        request.getRequestDispatcher("/WEB-INF/views/dashboard/edit.jsp").forward(request, response);
    }
}
