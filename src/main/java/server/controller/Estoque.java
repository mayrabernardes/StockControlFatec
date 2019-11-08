package server.controller;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import server.model.Produto;

public class Estoque extends HttpServlet{
    @Override
    public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException{
        try {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("estoque");     
            EntityManager em = emf.createEntityManager();

            Query query = em.createQuery("select prod from product prod");
            List<Produto> product = query.getResultList();

            em.close();
            emf.close();
            req.setAttribute("product", product);
            req.getRequestDispatcher("/static/estoque.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet!\n" + e.toString());
        }
    }
}