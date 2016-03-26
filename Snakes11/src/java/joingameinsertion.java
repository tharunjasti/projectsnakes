/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hemanth
 */
public class joingameinsertion extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */

            String dc = req.getParameter("jdicecolor");
            String e2 = req.getParameter("string");
            String ee = req.getParameter("p");
            String e1 = req.getParameter("b");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");

            Statement st1 = con.createStatement();
            st1.executeUpdate("update players_details set player_color='" + dc + "' where player_name='" + ee + "' and game_name='" + e1 + "'");
            Statement st11 = con.createStatement();
            ResultSet rss = st11.executeQuery("select flag,orders from players_details where player_name='" + ee + "' and game_name='" + e1 + "'");
            int a = 0, b1 = 0;
            while (rss.next()) {
                a = rss.getInt(1);
                b1 = rss.getInt(2);
            }
            e2 = "board.jsp?jbname=" + e1 + "&jpname=" + ee + "&a=0&b1=" + b1 + "&flag=on";
            res.sendRedirect(e2);
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet joingameinsertion</title>");
            out.println("</head>");
            out.println("<body>");

            out.println("</body>");
            out.println("</html>");
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());
        } catch (Exception e) {
            out.println(e);

        }
    }
}
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP
 * <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
/**
 * Handles the HTTP
 * <code>POST</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
// </editor-fold>

