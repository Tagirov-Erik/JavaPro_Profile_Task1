package com.gmail.eriktagirov;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    static final String LAST_NAME = "Tagirov";

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
//        String age = req.getParameter("age");

        if (LAST_NAME.equals(lastName)) {
            HttpSession session = req.getSession(true);
            session.setAttribute("user_in", lastName);
        } else {
            JOptionPane.showMessageDialog(null, "Only one user registered: Tagirov");
        }
        res.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String a = req.getParameter("a");
        HttpSession session = req.getSession(false);

        if ("exit".equals(a) && (session != null))
            session.removeAttribute("user_in");
        resp.sendRedirect("index.jsp");
    }
}
