/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hemanth
 */
public class joingamevalidations extends HttpServlet {

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

            String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
            Connection connection = null;
            ResultSet rs;
            String jpname = req.getParameter("jpname");
            String jbname = req.getParameter("jbname");
            String jpassword = req.getParameter("jpassword");
            String jdicecolor = req.getParameter("jdicecolor");
            HttpSession s = req.getSession(true);
            s.setAttribute("jbname", jbname);
            s.setAttribute("jpname", jpname);
            Class.forName("com.mysql.jdbc.Driver");
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionURL, "root", "tharun9322");
            String sql0 = "select max_players,count from game_details where game_name='" + jbname + "'";
            Statement st1 = connection.createStatement();
            ResultSet rs1 = st1.executeQuery(sql0);
            int max = 0, count = 0;
            while (rs1.next()) {
                max = rs1.getInt(1);
                count = rs1.getInt(2);
            }
            String sq0 = "select count(*) from players_details where game_name='" + jbname + "'";
            Statement st0 = connection.createStatement();
            ResultSet rs0 = st0.executeQuery(sq0);
            int order = 0;
            while (rs0.next()) {
                order = rs0.getInt(1);

            }
            if (count < max) {

                String sql01 = "select passphrase from game_details where game_name='" + jbname + "'";
                Statement st11 = connection.createStatement();
                ResultSet rss = st11.executeQuery(sql01);
                String pp = null;
                while (rss.next()) {
                    pp = rss.getString(1);

                }
                if (jpassword.equals(pp)) {
                    String sql = "insert into players_details values (?,?,?,?,?,?,?,?,?)";
                    PreparedStatement pst = connection.prepareStatement(sql);
                    pst.setString(1, jpname);
                    pst.setString(2, jbname);
                    pst.setString(3, "zed");
                    pst.setInt(4, 0);
                    pst.setInt(5, 0);
                    pst.setString(6, "0");
                    pst.setInt(7, 0);
                    pst.setInt(8, order + 1);
                    pst.setInt(9, 0);
                    int numRowsChanged = pst.executeUpdate();
                    String sql1 = "update game_details set count=count+1 where game_name='" + jbname + "'";
                    Statement st = connection.createStatement();
                    st.executeUpdate(sql1);
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet joingamevalidations</title>");
                    out.println("</head>");
                    out.println("<body>");

                    out.println("</body>");
                    out.println("</html>");

                    res.sendRedirect("dicecolor.jsp?jbname=" + jbname + "&jpname=" + jpname + "");

                } else {


                    req.getRequestDispatcher("/joingamejsp1.jsp").forward(req, res);
                }
            } else {
                out.println("<p>Maximum players exceeded</p><br>");
                out.println("<a href='joingamejsp1.jsp'>GO Back</a>");
            }
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
//            out.println("SQLException caught: "
//                    + e.getMessage());
            res.setContentType("text/html");
            out.println("<html><head><title></title><body>");
            out.println("The entered player name already exists.......Please enter a new player name<br>");
            out.println("<a href='joingamejsp1.jsp'>GOBack</a> ");
            out.println("</body></html>");

        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
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
}
