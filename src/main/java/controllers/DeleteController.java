package controllers;

import repos.PostRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@WebServlet("/dashboard/delete/*")
public class DeleteController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int contentId = Integer.valueOf(request.getPathInfo().split("/")[1]);

        HttpSession session = request.getSession();
        PostRepository postRepo = new PostRepository();

        String path = getServletContext().getRealPath("") + "uploads" + File.separator;
        File file = new File(path + postRepo.getPost(contentId).getImage());

        if(file.delete()) {
            System.out.println("image deleted successfully!");
        } else {
            System.out.println("this record has no any image!");
        }


        if(postRepo.deletePost(contentId) > 0){
            session.setAttribute("deleted", "Record deleted successfully!");
        } else {
            session.setAttribute("deleted", "Operation failed!");
        }

        response.sendRedirect(request.getContextPath() + "/dashboard");

    }
}
