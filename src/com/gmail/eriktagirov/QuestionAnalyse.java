package com.gmail.eriktagirov;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

//@WebServlet (name = "Servlet", urlPatterns = {"/questionAnalyse"})
public class QuestionAnalyse extends HttpServlet {
    private static AtomicInteger at1 = new AtomicInteger(0);
    private static AtomicInteger at2 = new AtomicInteger(0);
    private static AtomicInteger at3 = new AtomicInteger(0);

    static final int QUESTION_1_YES = 0;
    static final int QUESTION_1_NO = 1;
    static final int QUESTION_2_YES = 2;
    static final int QUESTION_2_NO = 3;
    static final int QUESTION_3_YES = 4;
    static final int QUESTION_3_NO = 5;

    static final String TEMPLATE = "<html>" +
            "<head><title>QuestionAnalyse</title></head>" +
            "<body><h1>%s</h1></body></html>";

    final AtomicIntegerArray results = new AtomicIntegerArray(6);

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        final String firstName = req.getParameter("firstName");
        final String lastName = req.getParameter("lastName");
        final String age = req.getParameter("age");
        final String q1 = req.getParameter("question1");
        final String q2 = req.getParameter("question2");
        final String q3 = req.getParameter("question3");

        final int indx1 = "Yes".equals(q1) ? QUESTION_1_YES : QUESTION_1_NO;
        final int indx2 = "Yes".equals(q2) ? QUESTION_2_YES : QUESTION_2_NO;
        final int indx3 = "Yes".equals(q3) ? QUESTION_3_YES : QUESTION_3_NO;

        results.getAndIncrement(indx1);
        results.getAndIncrement(indx2);
        results.getAndIncrement(indx3);

        String res = "<p>You are logged as " + firstName + " " + lastName + ", " + age + " Age</p>";
        res += "<p>Q1: yes = " + results.get(QUESTION_1_YES) + ", no = " + results.get(QUESTION_1_NO) + "</p>";
        res += "<p>Q2: yes = " + results.get(QUESTION_2_YES) + ", no = " + results.get(QUESTION_2_NO) + "</p>";
        res += "<p>Q3: yes = " + results.get(QUESTION_3_YES) + ", no = " + results.get(QUESTION_3_NO) + "</p>";

        res += "<br><a href='/index.jsp'>Answer again</a>";
        res += "<br>Or click this link to <a href='/login?a=exit'>logout</a>";
        resp.getWriter().println(String.format(TEMPLATE, res));
    }
}

