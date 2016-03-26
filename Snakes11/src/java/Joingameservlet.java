
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Joingameservlet extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    /**
     * Process the HTTP Get request
     */
    public void doPost(HttpServletRequest req,
            HttpServletResponse res) throws ServletException,
            IOException {
        String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
        Connection connection = null;
        ResultSet rs;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        //get the variables entered in the form
        String uname = req.getParameter("pname");
        String bname = req.getParameter("board");
        String password = req.getParameter("password");
        String dicecolor = req.getParameter("dicecolor");

        try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionURL, "root", "tharun9322");

            HttpSession s = req.getSession(true);






            HttpSession s1 = req.getSession(true);

            String sql = "select  game_name,passphrase from game_details ";
            Statement pst = connection.createStatement();



            ResultSet rs1 = pst.executeQuery(sql);

            HttpSession ss = req.getSession(true);

            HashMap m = new HashMap();
            while (rs1.next()) {

                m.put(rs1.getString(1), rs1.getString(2));
            }
            ss.setAttribute("gp", m);


            req.getRequestDispatcher("/joingamejsp1.jsp").forward(req, res);
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());

        } catch (Exception e) {
            out.println(e);
        } finally {
            // Always close the database connection.
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ignored) {
                out.println(ignored);
            }
        }
    }
}
