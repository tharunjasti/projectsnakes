<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.strutsel.taglib.html.ELSelectTag"%>
<html>
    <head><title>Board</title>
        <style>
            body{background-image:url("Photos/background.png");}

            table.ta{border:3px solid blue;width:618px;height:586px;margin-left:700px;background:url('Photos/board2.jpg')}
            table.tb{border:2px solid red; position: absolute; top: 150px; }
            th{border:1px solid red;margin-bottom:400px;}
            td{border:1px solid red;}
            h1{position:absolute;top:50px;}
        </style>

    </head>

    <body>
        <%response.setIntHeader("Refresh", 5);%>
        <%
            try {
                String ss = (String) session.getAttribute("uname");
                if (ss != null) {
                    out.println("<p style='postion: absolute; right: 0px; color: black'>Welcome " + ss + "</p>");
                    out.println("<a style='position: absolute; top: 10px; right: 6px; color: black;' href='logout.jsp'>Logout</a>");
                }
            } catch (Exception e) {
                out.println("Error");
            }
        %>

        <h1>Welcome to the Game</h1>
        <form action='gamecontroller' method="POST">
            <table align="left" class="ta">
                <%
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con = null;
                    RequestDispatcher rd1 = request.getRequestDispatcher("winner.jsp");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");
                    Statement s = con.createStatement();
                    if (request.getAttribute("flag") != null) {
                        for (int i = 1; i < 11; i++) {
                            out.println("<tr>");
                            for (int j = 1; j < 11; j++) {

                                out.println("<td width=10% height=10% id=>");

                                out.println("</td>");

                            }
                            out.println("</tr>");
                        }
                    } else {


                        int am = 0, bm = 0, cm = 0;
                        int am3 = 0;
                        int bm3 = 0;
                        int am1 = 0;
                        int bm1 = 0;
                        int am2 = 0;
                        int bm2 = 0;
                        int cup = 0, cup1 = 0, cup2 = 0, cup3 = 0;

                        String aa1 = request.getParameter("jbname");
                        String sqlq1 = "select player_color,current_position from players_details where game_name=" + '"' + aa1 + '"';
                        String sqlq2 = "select max_players,count from game_details where game_name=" + '"' + aa1 + '"';
                        ResultSet rss2 = s.executeQuery(sqlq2);
                        int counnn = 0;
                        int maxxx = 0;
                        while (rss2.next()) {
                            counnn = rss2.getInt(1);
                            maxxx = rss2.getInt(2);
                        }
                        ResultSet rss1 = s.executeQuery(sqlq1);
                        ArrayList<String> colors = new ArrayList<String>();
                        ArrayList<Integer> position = new ArrayList<Integer>();
                        while (rss1.next()) {
                            colors.add(rss1.getString(1));
                            position.add(rss1.getInt(2));
                        }
                        if (counnn == 2 && maxxx == counnn) {

                            cup = position.get(0);
                            if (position.get(1) != null) {
                                cup1 = position.get(1);
                            }
   

                            cm = cup;
                            if (cm != 0) {
                                if (cm == 1) {
                                    am = 10;
                                    bm = 1;
                                } else if (cm == 2) {
                                    am = 10;
                                    bm = 2;
                                } else if (cm == 3) {
                                    am = 10;
                                    bm = 3;
                                } else if (cm == 4) {
                                    am = 10;
                                    bm = 4;
                                } else if (cm == 5) {
                                    am = 10;
                                    bm = 5;
                                } else if (cm == 6) {
                                    am = 10;
                                    bm = 6;
                                } else if (cm == 7) {
                                    am = 10;
                                    bm = 7;
                                } else if (cm == 8) {
                                    am = 10;
                                    bm = 8;
                                } else if (cm == 9) {
                                    am = 10;
                                    bm = 9;
                                } else if (cm == 10) {
                                    am = 10;
                                    bm = 10;
                                } else if (cm == 11) {
                                    am = 9;
                                    bm = 10;
                                } else if (cm == 12) {
                                    am = 9;
                                    bm = 9;
                                } else if (cm == 13) {
                                    am = 9;
                                    bm = 8;
                                } else if (cm == 14) {
                                    am = 9;
                                    bm = 7;
                                } else if (cm == 15) {
                                    am = 9;
                                    bm = 6;
                                } else if (cm == 16) {
                                    am = 9;
                                    bm = 4;
                                } else if (cm == 17) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 18) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 19) {
                                    am = 9;
                                    bm = 2;
                                } else if (cm == 20) {
                                    am = 9;
                                    bm = 1;
                                } else if (cm == 21) {
                                    am = 8;
                                    bm = 1;
                                } else if (cm == 22) {
                                    am = 8;
                                    bm = 2;
                                } else if (cm == 23) {
                                    am = 8;
                                    bm = 3;
                                } else if (cm == 24) {
                                    am = 8;
                                    bm = 4;
                                } else if (cm == 25) {
                                    am = 8;
                                    bm = 5;
                                } else if (cm == 26) {
                                    am = 8;
                                    bm = 6;
                                } else if (cm == 27) {
                                    am = 8;
                                    bm = 7;
                                } else if (cm == 28) {
                                    am = 8;
                                    bm = 8;
                                } else if (cm == 29) {
                                    am = 8;
                                    bm = 9;
                                } else if (cm == 30) {
                                    am = 8;
                                    bm = 10;
                                } else if (cm == 31) {
                                    am = 7;
                                    bm = 10;
                                } else if (cm == 32) {
                                    am = 7;
                                    bm = 9;
                                } else if (cm == 33) {
                                    am = 7;
                                    bm = 8;
                                } else if (cm == 34) {
                                    am = 7;
                                    bm = 7;
                                } else if (cm == 35) {
                                    am = 7;
                                    bm = 6;
                                } else if (cm == 36) {
                                    am = 7;
                                    bm = 5;
                                } else if (cm == 37) {
                                    am = 7;
                                    bm = 4;
                                } else if (cm == 38) {
                                    am = 7;
                                    bm = 3;
                                } else if (cm == 39) {
                                    am = 7;
                                    bm = 2;
                                } else if (cm == 40) {
                                    am = 7;
                                    bm = 1;
                                } else if (cm == 41) {
                                    am = 6;
                                    bm = 1;
                                } else if (cm == 42) {
                                    am = 6;
                                    bm = 2;
                                } else if (cm == 43) {
                                    am = 6;
                                    bm = 3;
                                } else if (cm == 44) {
                                    am = 6;
                                    bm = 4;
                                } else if (cm == 45) {
                                    am = 6;
                                    bm = 5;
                                } else if (cm == 46) {
                                    am = 6;
                                    bm = 6;
                                } else if (cm == 47) {
                                    am = 6;
                                    bm = 7;
                                } else if (cm == 48) {
                                    am = 6;
                                    bm = 8;
                                } else if (cm == 49) {
                                    am = 6;
                                    bm = 9;
                                } else if (cm == 50) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 51) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 52) {
                                    am = 5;
                                    bm = 9;
                                } else if (cm == 53) {
                                    am = 5;
                                    bm = 8;
                                } else if (cm == 54) {
                                    am = 5;
                                    bm = 7;
                                } else if (cm == 55) {
                                    am = 5;
                                    bm = 6;
                                } else if (cm == 56) {
                                    am = 5;
                                    bm = 5;
                                } else if (cm == 57) {
                                    am = 5;
                                    bm = 4;
                                } else if (cm == 58) {
                                    am = 5;
                                    bm = 3;
                                } else if (cm == 59) {
                                    am = 5;
                                    bm = 2;
                                } else if (cm == 60) {
                                    am = 5;
                                    bm = 1;
                                } else if (cm == 61) {
                                    am = 4;
                                    bm = 1;
                                } else if (cm == 62) {
                                    am = 4;
                                    bm = 2;
                                } else if (cm == 63) {
                                    am = 4;
                                    bm = 3;
                                } else if (cm == 64) {
                                    am = 4;
                                    bm = 4;
                                } else if (cm == 65) {
                                    am = 4;
                                    bm = 5;
                                } else if (cm == 66) {
                                    am = 4;
                                    bm = 6;
                                } else if (cm == 67) {
                                    am = 4;
                                    bm = 7;
                                } else if (cm == 68) {
                                    am = 4;
                                    bm = 8;
                                } else if (cm == 69) {
                                    am = 4;
                                    bm = 9;
                                } else if (cm == 70) {
                                    am = 4;
                                    bm = 10;
                                } else if (cm == 71) {
                                    am = 3;
                                    bm = 10;
                                } else if (cm == 72) {
                                    am = 3;
                                    bm = 9;
                                } else if (cm == 73) {
                                    am = 3;
                                    bm = 8;
                                } else if (cm == 74) {
                                    am = 3;
                                    bm = 7;
                                } else if (cm == 75) {
                                    am = 3;
                                    bm = 6;
                                } else if (cm == 76) {
                                    am = 3;
                                    bm = 5;
                                } else if (cm == 77) {
                                    am = 3;
                                    bm = 4;
                                } else if (cm == 78) {
                                    am = 3;
                                    bm = 3;
                                } else if (cm == 79) {
                                    am = 3;
                                    bm = 2;
                                } else if (cm == 80) {
                                    am = 3;
                                    bm = 1;
                                } else if (cm == 81) {
                                    am = 2;
                                    bm = 1;
                                } else if (cm == 82) {
                                    am = 2;
                                    bm = 2;
                                } else if (cm == 83) {
                                    am = 2;
                                    bm = 3;
                                } else if (cm == 84) {
                                    am = 2;
                                    bm = 4;
                                } else if (cm == 85) {
                                    am = 2;
                                    bm = 5;
                                } else if (cm == 86) {
                                    am = 2;
                                    bm = 6;
                                } else if (cm == 87) {
                                    am = 2;
                                    bm = 7;
                                } else if (cm == 88) {
                                    am = 2;
                                    bm = 8;
                                } else if (cm == 89) {
                                    am = 2;
                                    bm = 9;
                                } else if (cm == 90) {
                                    am = 2;
                                    bm = 10;
                                } else if (cm == 91) {
                                    am = 1;
                                    bm = 10;
                                } else if (cm == 92) {
                                    am = 1;
                                    bm = 9;
                                } else if (cm == 93) {
                                    am = 1;
                                    bm = 8;
                                } else if (cm == 94) {
                                    am = 1;
                                    bm = 7;
                                } else if (cm == 95) {
                                    am = 1;
                                    bm = 6;
                                } else if (cm == 96) {
                                    am = 1;
                                    bm = 5;
                                } else if (cm == 97) {
                                    am = 1;
                                    bm = 4;
                                } else if (cm == 98) {
                                    am = 1;
                                    bm = 3;
                                } else if (cm == 99) {
                                    am = 1;
                                    bm = 2;
                                } else if (cm == 100) {
                                    am = 1;
                                    bm = 1;
                                }
                            }
                            cm = cup1;

                            if (cm != 0) {
                                if (cm == 1) {
                                    am1 = 10;
                                    bm1 = 1;
                                } else if (cm == 2) {
                                    am1 = 10;
                                    bm1 = 2;
                                } else if (cm == 3) {
                                    am1 = 10;
                                    bm1 = 3;
                                } else if (cm == 4) {
                                    am1 = 10;
                                    bm1 = 4;
                                } else if (cm == 5) {
                                    am1 = 10;
                                    bm1 = 5;
                                } else if (cm == 6) {
                                    am1 = 10;
                                    bm1 = 6;
                                } else if (cm == 7) {
                                    am1 = 10;
                                    bm1 = 7;
                                } else if (cm == 8) {
                                    am1 = 10;
                                    bm1 = 8;
                                } else if (cm == 9) {
                                    am1 = 10;
                                    bm1 = 9;
                                } else if (cm == 10) {
                                    am1 = 10;
                                    bm1 = 10;
                                } else if (cm == 11) {
                                    am1 = 9;
                                    bm1 = 10;
                                } else if (cm == 12) {
                                    am1 = 9;
                                    bm1 = 9;
                                } else if (cm == 13) {
                                    am1 = 9;
                                    bm1 = 8;
                                } else if (cm == 14) {
                                    am1 = 9;
                                    bm1 = 7;
                                } else if (cm == 15) {
                                    am1 = 9;
                                    bm1 = 6;
                                } else if (cm == 16) {
                                    am1 = 9;
                                    bm1 = 4;
                                } else if (cm == 17) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 18) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 19) {
                                    am1 = 9;
                                    bm1 = 2;
                                } else if (cm == 20) {
                                    am1 = 9;
                                    bm1 = 1;
                                } else if (cm == 21) {
                                    am1 = 8;
                                    bm1 = 1;
                                } else if (cm == 22) {
                                    am1 = 8;
                                    bm1 = 2;
                                } else if (cm == 23) {
                                    am1 = 8;
                                    bm1 = 3;
                                } else if (cm == 24) {
                                    am1 = 8;
                                    bm1 = 4;
                                } else if (cm == 25) {
                                    am1 = 8;
                                    bm1 = 5;
                                } else if (cm == 26) {
                                    am1 = 8;
                                    bm1 = 6;
                                } else if (cm == 27) {
                                    am1 = 8;
                                    bm1 = 7;
                                } else if (cm == 28) {
                                    am1 = 8;
                                    bm1 = 8;
                                } else if (cm == 29) {
                                    am1 = 8;
                                    bm1 = 9;
                                } else if (cm == 30) {
                                    am1 = 8;
                                    bm1 = 10;
                                } else if (cm == 31) {
                                    am1 = 7;
                                    bm1 = 10;
                                } else if (cm == 32) {
                                    am1 = 7;
                                    bm1 = 9;
                                } else if (cm == 33) {
                                    am1 = 7;
                                    bm1 = 8;
                                } else if (cm == 34) {
                                    am1 = 7;
                                    bm1 = 7;
                                } else if (cm == 35) {
                                    am1 = 7;
                                    bm1 = 6;
                                } else if (cm == 36) {
                                    am1 = 7;
                                    bm1 = 5;
                                } else if (cm == 37) {
                                    am1 = 7;
                                    bm1 = 4;
                                } else if (cm == 38) {
                                    am1 = 7;
                                    bm1 = 3;
                                } else if (cm == 39) {
                                    am1 = 7;
                                    bm1 = 2;
                                } else if (cm == 40) {
                                    am1 = 7;
                                    bm1 = 1;
                                } else if (cm == 41) {
                                    am1 = 6;
                                    bm1 = 1;
                                } else if (cm == 42) {
                                    am1 = 6;
                                    bm1 = 2;
                                } else if (cm == 43) {
                                    am1 = 6;
                                    bm1 = 3;
                                } else if (cm == 44) {
                                    am1 = 6;
                                    bm1 = 4;
                                } else if (cm == 45) {
                                    am1 = 6;
                                    bm1 = 5;
                                } else if (cm == 46) {
                                    am1 = 6;
                                    bm1 = 6;
                                } else if (cm == 47) {
                                    am1 = 6;
                                    bm1 = 7;
                                } else if (cm == 48) {
                                    am1 = 6;
                                    bm1 = 8;
                                } else if (cm == 49) {
                                    am1 = 6;
                                    bm1 = 9;
                                } else if (cm == 50) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 51) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 52) {
                                    am1 = 5;
                                    bm1 = 9;
                                } else if (cm == 53) {
                                    am1 = 5;
                                    bm1 = 8;
                                } else if (cm == 54) {
                                    am1 = 5;
                                    bm1 = 7;
                                } else if (cm == 55) {
                                    am1 = 5;
                                    bm1 = 6;
                                } else if (cm == 56) {
                                    am1 = 5;
                                    bm1 = 5;
                                } else if (cm == 57) {
                                    am1 = 5;
                                    bm1 = 4;
                                } else if (cm == 58) {
                                    am1 = 5;
                                    bm1 = 3;
                                } else if (cm == 59) {
                                    am1 = 5;
                                    bm1 = 2;
                                } else if (cm == 60) {
                                    am1 = 5;
                                    bm1 = 1;
                                } else if (cm == 61) {
                                    am1 = 4;
                                    bm1 = 1;
                                } else if (cm == 62) {
                                    am1 = 4;
                                    bm1 = 2;
                                } else if (cm == 63) {
                                    am1 = 4;
                                    bm1 = 3;
                                } else if (cm == 64) {
                                    am1 = 4;
                                    bm1 = 4;
                                } else if (cm == 65) {
                                    am1 = 4;
                                    bm1 = 5;
                                } else if (cm == 66) {
                                    am1 = 4;
                                    bm1 = 6;
                                } else if (cm == 67) {
                                    am1 = 4;
                                    bm1 = 7;
                                } else if (cm == 68) {
                                    am1 = 4;
                                    bm1 = 8;
                                } else if (cm == 69) {
                                    am1 = 4;
                                    bm1 = 9;
                                } else if (cm == 70) {
                                    am1 = 4;
                                    bm1 = 10;
                                } else if (cm == 71) {
                                    am1 = 3;
                                    bm1 = 10;
                                } else if (cm == 72) {
                                    am1 = 3;
                                    bm1 = 9;
                                } else if (cm == 73) {
                                    am1 = 3;
                                    bm1 = 8;
                                } else if (cm == 74) {
                                    am1 = 3;
                                    bm1 = 7;
                                } else if (cm == 75) {
                                    am1 = 3;
                                    bm1 = 6;
                                } else if (cm == 76) {
                                    am1 = 3;
                                    bm1 = 5;
                                } else if (cm == 77) {
                                    am1 = 3;
                                    bm1 = 4;
                                } else if (cm == 78) {
                                    am1 = 3;
                                    bm1 = 3;
                                } else if (cm == 79) {
                                    am1 = 3;
                                    bm1 = 2;
                                } else if (cm == 80) {
                                    am1 = 3;
                                    bm1 = 1;
                                } else if (cm == 81) {
                                    am1 = 2;
                                    bm1 = 1;
                                } else if (cm == 82) {
                                    am1 = 2;
                                    bm1 = 2;
                                } else if (cm == 83) {
                                    am1 = 2;
                                    bm1 = 3;
                                } else if (cm == 84) {
                                    am1 = 2;
                                    bm1 = 4;
                                } else if (cm == 85) {
                                    am1 = 2;
                                    bm1 = 5;
                                } else if (cm == 86) {
                                    am1 = 2;
                                    bm1 = 6;
                                } else if (cm == 87) {
                                    am1 = 2;
                                    bm1 = 7;
                                } else if (cm == 88) {
                                    am1 = 2;
                                    bm1 = 8;
                                } else if (cm == 89) {
                                    am1 = 2;
                                    bm1 = 9;
                                } else if (cm == 90) {
                                    am1 = 2;
                                    bm1 = 10;
                                } else if (cm == 91) {
                                    am1 = 1;
                                    bm1 = 10;
                                } else if (cm == 92) {
                                    am1 = 1;
                                    bm1 = 9;
                                } else if (cm == 93) {
                                    am1 = 1;
                                    bm1 = 8;
                                } else if (cm == 94) {
                                    am1 = 1;
                                    bm1 = 7;
                                } else if (cm == 95) {
                                    am1 = 1;
                                    bm1 = 6;
                                } else if (cm == 96) {
                                    am1 = 1;
                                    bm1 = 5;
                                } else if (cm == 97) {
                                    am1 = 1;
                                    bm1 = 4;
                                } else if (cm == 98) {
                                    am1 = 1;
                                    bm1 = 3;
                                } else if (cm == 99) {
                                    am1 = 1;
                                    bm1 = 2;
                                } else if (cm == 100) {
                                    am1 = 1;
                                    bm1 = 1;
                                }
                            }
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            

                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");
                            Statement s1 = con.createStatement();
                  
                            String colo = null;
                            String colo1 = null;
                            String colo2 = null;
                            String colo3 = null;
                            colo = colors.get(0);
                            if (colors.get(1) != null) {
                                colo1 = colors.get(1);
                            }
    
                            for (int i = 1; i < 11; i++) {
                                out.println("<tr>");
                                for (int j = 1; j < 11; j++) {
                                    if (i == am && j == bm) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo + ".gif");
                                        out.println("</td>");
                                    } else if (i == am1 && j == bm1) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo1 + ".gif");
                                        out.println("</td>");
                                    } 
                                    else {
                                        out.println("<td width=10% height=10% >");

                                        out.println("</td>");
                                    }
                                }
                                out.println("</tr>");
                            }


                        } else if (counnn == 3 && maxxx == counnn) {

                            cup = position.get(0);
                            if (position.get(1) != null) {
                                cup1 = position.get(1);
                            }
                            if (position.get(2) != null) {
                                cup2 = position.get(2);
                            }
    //                    if (position.get(3) != null) {
    //                        cup2 = position.get(3);
    //                    }

                            cm = cup;
                            if (cm != 0) {
                                if (cm == 1) {
                                    am = 10;
                                    bm = 1;
                                } else if (cm == 2) {
                                    am = 10;
                                    bm = 2;
                                } else if (cm == 3) {
                                    am = 10;
                                    bm = 3;
                                } else if (cm == 4) {
                                    am = 10;
                                    bm = 4;
                                } else if (cm == 5) {
                                    am = 10;
                                    bm = 5;
                                } else if (cm == 6) {
                                    am = 10;
                                    bm = 6;
                                } else if (cm == 7) {
                                    am = 10;
                                    bm = 7;
                                } else if (cm == 8) {
                                    am = 10;
                                    bm = 8;
                                } else if (cm == 9) {
                                    am = 10;
                                    bm = 9;
                                } else if (cm == 10) {
                                    am = 10;
                                    bm = 10;
                                } else if (cm == 11) {
                                    am = 9;
                                    bm = 10;
                                } else if (cm == 12) {
                                    am = 9;
                                    bm = 9;
                                } else if (cm == 13) {
                                    am = 9;
                                    bm = 8;
                                } else if (cm == 14) {
                                    am = 9;
                                    bm = 7;
                                } else if (cm == 15) {
                                    am = 9;
                                    bm = 6;
                                } else if (cm == 16) {
                                    am = 9;
                                    bm = 4;
                                } else if (cm == 17) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 18) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 19) {
                                    am = 9;
                                    bm = 2;
                                } else if (cm == 20) {
                                    am = 9;
                                    bm = 1;
                                } else if (cm == 21) {
                                    am = 8;
                                    bm = 1;
                                } else if (cm == 22) {
                                    am = 8;
                                    bm = 2;
                                } else if (cm == 23) {
                                    am = 8;
                                    bm = 3;
                                } else if (cm == 24) {
                                    am = 8;
                                    bm = 4;
                                } else if (cm == 25) {
                                    am = 8;
                                    bm = 5;
                                } else if (cm == 26) {
                                    am = 8;
                                    bm = 6;
                                } else if (cm == 27) {
                                    am = 8;
                                    bm = 7;
                                } else if (cm == 28) {
                                    am = 8;
                                    bm = 8;
                                } else if (cm == 29) {
                                    am = 8;
                                    bm = 9;
                                } else if (cm == 30) {
                                    am = 8;
                                    bm = 10;
                                } else if (cm == 31) {
                                    am = 7;
                                    bm = 10;
                                } else if (cm == 32) {
                                    am = 7;
                                    bm = 9;
                                } else if (cm == 33) {
                                    am = 7;
                                    bm = 8;
                                } else if (cm == 34) {
                                    am = 7;
                                    bm = 7;
                                } else if (cm == 35) {
                                    am = 7;
                                    bm = 6;
                                } else if (cm == 36) {
                                    am = 7;
                                    bm = 5;
                                } else if (cm == 37) {
                                    am = 7;
                                    bm = 4;
                                } else if (cm == 38) {
                                    am = 7;
                                    bm = 3;
                                } else if (cm == 39) {
                                    am = 7;
                                    bm = 2;
                                } else if (cm == 40) {
                                    am = 7;
                                    bm = 1;
                                } else if (cm == 41) {
                                    am = 6;
                                    bm = 1;
                                } else if (cm == 42) {
                                    am = 6;
                                    bm = 2;
                                } else if (cm == 43) {
                                    am = 6;
                                    bm = 3;
                                } else if (cm == 44) {
                                    am = 6;
                                    bm = 4;
                                } else if (cm == 45) {
                                    am = 6;
                                    bm = 5;
                                } else if (cm == 46) {
                                    am = 6;
                                    bm = 6;
                                } else if (cm == 47) {
                                    am = 6;
                                    bm = 7;
                                } else if (cm == 48) {
                                    am = 6;
                                    bm = 8;
                                } else if (cm == 49) {
                                    am = 6;
                                    bm = 9;
                                } else if (cm == 50) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 51) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 52) {
                                    am = 5;
                                    bm = 9;
                                } else if (cm == 53) {
                                    am = 5;
                                    bm = 8;
                                } else if (cm == 54) {
                                    am = 5;
                                    bm = 7;
                                } else if (cm == 55) {
                                    am = 5;
                                    bm = 6;
                                } else if (cm == 56) {
                                    am = 5;
                                    bm = 5;
                                } else if (cm == 57) {
                                    am = 5;
                                    bm = 4;
                                } else if (cm == 58) {
                                    am = 5;
                                    bm = 3;
                                } else if (cm == 59) {
                                    am = 5;
                                    bm = 2;
                                } else if (cm == 60) {
                                    am = 5;
                                    bm = 1;
                                } else if (cm == 61) {
                                    am = 4;
                                    bm = 1;
                                } else if (cm == 62) {
                                    am = 4;
                                    bm = 2;
                                } else if (cm == 63) {
                                    am = 4;
                                    bm = 3;
                                } else if (cm == 64) {
                                    am = 4;
                                    bm = 4;
                                } else if (cm == 65) {
                                    am = 4;
                                    bm = 5;
                                } else if (cm == 66) {
                                    am = 4;
                                    bm = 6;
                                } else if (cm == 67) {
                                    am = 4;
                                    bm = 7;
                                } else if (cm == 68) {
                                    am = 4;
                                    bm = 8;
                                } else if (cm == 69) {
                                    am = 4;
                                    bm = 9;
                                } else if (cm == 70) {
                                    am = 4;
                                    bm = 10;
                                } else if (cm == 71) {
                                    am = 3;
                                    bm = 10;
                                } else if (cm == 72) {
                                    am = 3;
                                    bm = 9;
                                } else if (cm == 73) {
                                    am = 3;
                                    bm = 8;
                                } else if (cm == 74) {
                                    am = 3;
                                    bm = 7;
                                } else if (cm == 75) {
                                    am = 3;
                                    bm = 6;
                                } else if (cm == 76) {
                                    am = 3;
                                    bm = 5;
                                } else if (cm == 77) {
                                    am = 3;
                                    bm = 4;
                                } else if (cm == 78) {
                                    am = 3;
                                    bm = 3;
                                } else if (cm == 79) {
                                    am = 3;
                                    bm = 2;
                                } else if (cm == 80) {
                                    am = 3;
                                    bm = 1;
                                } else if (cm == 81) {
                                    am = 2;
                                    bm = 1;
                                } else if (cm == 82) {
                                    am = 2;
                                    bm = 2;
                                } else if (cm == 83) {
                                    am = 2;
                                    bm = 3;
                                } else if (cm == 84) {
                                    am = 2;
                                    bm = 4;
                                } else if (cm == 85) {
                                    am = 2;
                                    bm = 5;
                                } else if (cm == 86) {
                                    am = 2;
                                    bm = 6;
                                } else if (cm == 87) {
                                    am = 2;
                                    bm = 7;
                                } else if (cm == 88) {
                                    am = 2;
                                    bm = 8;
                                } else if (cm == 89) {
                                    am = 2;
                                    bm = 9;
                                } else if (cm == 90) {
                                    am = 2;
                                    bm = 10;
                                } else if (cm == 91) {
                                    am = 1;
                                    bm = 10;
                                } else if (cm == 92) {
                                    am = 1;
                                    bm = 9;
                                } else if (cm == 93) {
                                    am = 1;
                                    bm = 8;
                                } else if (cm == 94) {
                                    am = 1;
                                    bm = 7;
                                } else if (cm == 95) {
                                    am = 1;
                                    bm = 6;
                                } else if (cm == 96) {
                                    am = 1;
                                    bm = 5;
                                } else if (cm == 97) {
                                    am = 1;
                                    bm = 4;
                                } else if (cm == 98) {
                                    am = 1;
                                    bm = 3;
                                } else if (cm == 99) {
                                    am = 1;
                                    bm = 2;
                                } else if (cm == 100) {
                                    am = 1;
                                    bm = 1;
                                }
                            }
                            cm = cup1;

                            if (cm != 0) {
                                if (cm == 1) {
                                    am1 = 10;
                                    bm1 = 1;
                                } else if (cm == 2) {
                                    am1 = 10;
                                    bm1 = 2;
                                } else if (cm == 3) {
                                    am1 = 10;
                                    bm1 = 3;
                                } else if (cm == 4) {
                                    am1 = 10;
                                    bm1 = 4;
                                } else if (cm == 5) {
                                    am1 = 10;
                                    bm1 = 5;
                                } else if (cm == 6) {
                                    am1 = 10;
                                    bm1 = 6;
                                } else if (cm == 7) {
                                    am1 = 10;
                                    bm1 = 7;
                                } else if (cm == 8) {
                                    am1 = 10;
                                    bm1 = 8;
                                } else if (cm == 9) {
                                    am1 = 10;
                                    bm1 = 9;
                                } else if (cm == 10) {
                                    am1 = 10;
                                    bm1 = 10;
                                } else if (cm == 11) {
                                    am1 = 9;
                                    bm1 = 10;
                                } else if (cm == 12) {
                                    am1 = 9;
                                    bm1 = 9;
                                } else if (cm == 13) {
                                    am1 = 9;
                                    bm1 = 8;
                                } else if (cm == 14) {
                                    am1 = 9;
                                    bm1 = 7;
                                } else if (cm == 15) {
                                    am1 = 9;
                                    bm1 = 6;
                                } else if (cm == 16) {
                                    am1 = 9;
                                    bm1 = 4;
                                } else if (cm == 17) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 18) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 19) {
                                    am1 = 9;
                                    bm1 = 2;
                                } else if (cm == 20) {
                                    am1 = 9;
                                    bm1 = 1;
                                } else if (cm == 21) {
                                    am1 = 8;
                                    bm1 = 1;
                                } else if (cm == 22) {
                                    am1 = 8;
                                    bm1 = 2;
                                } else if (cm == 23) {
                                    am1 = 8;
                                    bm1 = 3;
                                } else if (cm == 24) {
                                    am1 = 8;
                                    bm1 = 4;
                                } else if (cm == 25) {
                                    am1 = 8;
                                    bm1 = 5;
                                } else if (cm == 26) {
                                    am1 = 8;
                                    bm1 = 6;
                                } else if (cm == 27) {
                                    am1 = 8;
                                    bm1 = 7;
                                } else if (cm == 28) {
                                    am1 = 8;
                                    bm1 = 8;
                                } else if (cm == 29) {
                                    am1 = 8;
                                    bm1 = 9;
                                } else if (cm == 30) {
                                    am1 = 8;
                                    bm1 = 10;
                                } else if (cm == 31) {
                                    am1 = 7;
                                    bm1 = 10;
                                } else if (cm == 32) {
                                    am1 = 7;
                                    bm1 = 9;
                                } else if (cm == 33) {
                                    am1 = 7;
                                    bm1 = 8;
                                } else if (cm == 34) {
                                    am1 = 7;
                                    bm1 = 7;
                                } else if (cm == 35) {
                                    am1 = 7;
                                    bm1 = 6;
                                } else if (cm == 36) {
                                    am1 = 7;
                                    bm1 = 5;
                                } else if (cm == 37) {
                                    am1 = 7;
                                    bm1 = 4;
                                } else if (cm == 38) {
                                    am1 = 7;
                                    bm1 = 3;
                                } else if (cm == 39) {
                                    am1 = 7;
                                    bm1 = 2;
                                } else if (cm == 40) {
                                    am1 = 7;
                                    bm1 = 1;
                                } else if (cm == 41) {
                                    am1 = 6;
                                    bm1 = 1;
                                } else if (cm == 42) {
                                    am1 = 6;
                                    bm1 = 2;
                                } else if (cm == 43) {
                                    am1 = 6;
                                    bm1 = 3;
                                } else if (cm == 44) {
                                    am1 = 6;
                                    bm1 = 4;
                                } else if (cm == 45) {
                                    am1 = 6;
                                    bm1 = 5;
                                } else if (cm == 46) {
                                    am1 = 6;
                                    bm1 = 6;
                                } else if (cm == 47) {
                                    am1 = 6;
                                    bm1 = 7;
                                } else if (cm == 48) {
                                    am1 = 6;
                                    bm1 = 8;
                                } else if (cm == 49) {
                                    am1 = 6;
                                    bm1 = 9;
                                } else if (cm == 50) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 51) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 52) {
                                    am1 = 5;
                                    bm1 = 9;
                                } else if (cm == 53) {
                                    am1 = 5;
                                    bm1 = 8;
                                } else if (cm == 54) {
                                    am1 = 5;
                                    bm1 = 7;
                                } else if (cm == 55) {
                                    am1 = 5;
                                    bm1 = 6;
                                } else if (cm == 56) {
                                    am1 = 5;
                                    bm1 = 5;
                                } else if (cm == 57) {
                                    am1 = 5;
                                    bm1 = 4;
                                } else if (cm == 58) {
                                    am1 = 5;
                                    bm1 = 3;
                                } else if (cm == 59) {
                                    am1 = 5;
                                    bm1 = 2;
                                } else if (cm == 60) {
                                    am1 = 5;
                                    bm1 = 1;
                                } else if (cm == 61) {
                                    am1 = 4;
                                    bm1 = 1;
                                } else if (cm == 62) {
                                    am1 = 4;
                                    bm1 = 2;
                                } else if (cm == 63) {
                                    am1 = 4;
                                    bm1 = 3;
                                } else if (cm == 64) {
                                    am1 = 4;
                                    bm1 = 4;
                                } else if (cm == 65) {
                                    am1 = 4;
                                    bm1 = 5;
                                } else if (cm == 66) {
                                    am1 = 4;
                                    bm1 = 6;
                                } else if (cm == 67) {
                                    am1 = 4;
                                    bm1 = 7;
                                } else if (cm == 68) {
                                    am1 = 4;
                                    bm1 = 8;
                                } else if (cm == 69) {
                                    am1 = 4;
                                    bm1 = 9;
                                } else if (cm == 70) {
                                    am1 = 4;
                                    bm1 = 10;
                                } else if (cm == 71) {
                                    am1 = 3;
                                    bm1 = 10;
                                } else if (cm == 72) {
                                    am1 = 3;
                                    bm1 = 9;
                                } else if (cm == 73) {
                                    am1 = 3;
                                    bm1 = 8;
                                } else if (cm == 74) {
                                    am1 = 3;
                                    bm1 = 7;
                                } else if (cm == 75) {
                                    am1 = 3;
                                    bm1 = 6;
                                } else if (cm == 76) {
                                    am1 = 3;
                                    bm1 = 5;
                                } else if (cm == 77) {
                                    am1 = 3;
                                    bm1 = 4;
                                } else if (cm == 78) {
                                    am1 = 3;
                                    bm1 = 3;
                                } else if (cm == 79) {
                                    am1 = 3;
                                    bm1 = 2;
                                } else if (cm == 80) {
                                    am1 = 3;
                                    bm1 = 1;
                                } else if (cm == 81) {
                                    am1 = 2;
                                    bm1 = 1;
                                } else if (cm == 82) {
                                    am1 = 2;
                                    bm1 = 2;
                                } else if (cm == 83) {
                                    am1 = 2;
                                    bm1 = 3;
                                } else if (cm == 84) {
                                    am1 = 2;
                                    bm1 = 4;
                                } else if (cm == 85) {
                                    am1 = 2;
                                    bm1 = 5;
                                } else if (cm == 86) {
                                    am1 = 2;
                                    bm1 = 6;
                                } else if (cm == 87) {
                                    am1 = 2;
                                    bm1 = 7;
                                } else if (cm == 88) {
                                    am1 = 2;
                                    bm1 = 8;
                                } else if (cm == 89) {
                                    am1 = 2;
                                    bm1 = 9;
                                } else if (cm == 90) {
                                    am1 = 2;
                                    bm1 = 10;
                                } else if (cm == 91) {
                                    am1 = 1;
                                    bm1 = 10;
                                } else if (cm == 92) {
                                    am1 = 1;
                                    bm1 = 9;
                                } else if (cm == 93) {
                                    am1 = 1;
                                    bm1 = 8;
                                } else if (cm == 94) {
                                    am1 = 1;
                                    bm1 = 7;
                                } else if (cm == 95) {
                                    am1 = 1;
                                    bm1 = 6;
                                } else if (cm == 96) {
                                    am1 = 1;
                                    bm1 = 5;
                                } else if (cm == 97) {
                                    am1 = 1;
                                    bm1 = 4;
                                } else if (cm == 98) {
                                    am1 = 1;
                                    bm1 = 3;
                                } else if (cm == 99) {
                                    am1 = 1;
                                    bm1 = 2;
                                } else if (cm == 100) {
                                    am1 = 1;
                                    bm1 = 1;
                                }
                            }
                            if (cup2 != 0) {
                                cm = cup2;

                                if (cm != 0) {
                                    if (cm == 1) {
                                        am2 = 10;
                                        bm2 = 1;
                                    } else if (cm == 2) {
                                        am2 = 10;
                                        bm2 = 2;
                                    } else if (cm == 3) {
                                        am2 = 10;
                                        bm2 = 3;
                                    } else if (cm == 4) {
                                        am2 = 10;
                                        bm2 = 4;
                                    } else if (cm == 5) {
                                        am2 = 10;
                                        bm2 = 5;
                                    } else if (cm == 6) {
                                        am2 = 10;
                                        bm2 = 6;
                                    } else if (cm == 7) {
                                        am2 = 10;
                                        bm2 = 7;
                                    } else if (cm == 8) {
                                        am2 = 10;
                                        bm2 = 8;
                                    } else if (cm == 9) {
                                        am2 = 10;
                                        bm2 = 9;
                                    } else if (cm == 10) {
                                        am2 = 10;
                                        bm2 = 10;
                                    } else if (cm == 11) {
                                        am2 = 9;
                                        bm2 = 10;
                                    } else if (cm == 12) {
                                        am2 = 9;
                                        bm2 = 9;
                                    } else if (cm == 13) {
                                        am2 = 9;
                                        bm2 = 8;
                                    } else if (cm == 14) {
                                        am2 = 9;
                                        bm2 = 7;
                                    } else if (cm == 15) {
                                        am2 = 9;
                                        bm2 = 6;
                                    } else if (cm == 16) {
                                        am2 = 9;
                                        bm2 = 4;
                                    } else if (cm == 17) {
                                        am2 = 9;
                                        bm2 = 3;
                                    } else if (cm == 18) {
                                        am2 = 9;
                                        bm2 = 3;
                                    } else if (cm == 19) {
                                        am2 = 9;
                                        bm2 = 2;
                                    } else if (cm == 20) {
                                        am2 = 9;
                                        bm2 = 1;
                                    } else if (cm == 21) {
                                        am2 = 8;
                                        bm2 = 1;
                                    } else if (cm == 22) {
                                        am2 = 8;
                                        bm2 = 2;
                                    } else if (cm == 23) {
                                        am2 = 8;
                                        bm2 = 3;
                                    } else if (cm == 24) {
                                        am2 = 8;
                                        bm2 = 4;
                                    } else if (cm == 25) {
                                        am2 = 8;
                                        bm2 = 5;
                                    } else if (cm == 26) {
                                        am2 = 8;
                                        bm2 = 6;
                                    } else if (cm == 27) {
                                        am2 = 8;
                                        bm2 = 7;
                                    } else if (cm == 28) {
                                        am2 = 8;
                                        bm2 = 8;
                                    } else if (cm == 29) {
                                        am2 = 8;
                                        bm2 = 9;
                                    } else if (cm == 30) {
                                        am2 = 8;
                                        bm2 = 10;
                                    } else if (cm == 31) {
                                        am2 = 7;
                                        bm2 = 10;
                                    } else if (cm == 32) {
                                        am2 = 7;
                                        bm2 = 9;
                                    } else if (cm == 33) {
                                        am2 = 7;
                                        bm2 = 8;
                                    } else if (cm == 34) {
                                        am2 = 7;
                                        bm2 = 7;
                                    } else if (cm == 35) {
                                        am2 = 7;
                                        bm2 = 6;
                                    } else if (cm == 36) {
                                        am2 = 7;
                                        bm2 = 5;
                                    } else if (cm == 37) {
                                        am2 = 7;
                                        bm2 = 4;
                                    } else if (cm == 38) {
                                        am2 = 7;
                                        bm2 = 3;
                                    } else if (cm == 39) {
                                        am2 = 7;
                                        bm2 = 2;
                                    } else if (cm == 40) {
                                        am2 = 7;
                                        bm2 = 1;
                                    } else if (cm == 41) {
                                        am2 = 6;
                                        bm2 = 1;
                                    } else if (cm == 42) {
                                        am2 = 6;
                                        bm2 = 2;
                                    } else if (cm == 43) {
                                        am2 = 6;
                                        bm2 = 3;
                                    } else if (cm == 44) {
                                        am2 = 6;
                                        bm2 = 4;
                                    } else if (cm == 45) {
                                        am2 = 6;
                                        bm2 = 5;
                                    } else if (cm == 46) {
                                        am2 = 6;
                                        bm2 = 6;
                                    } else if (cm == 47) {
                                        am2 = 6;
                                        bm2 = 7;
                                    } else if (cm == 48) {
                                        am2 = 6;
                                        bm2 = 8;
                                    } else if (cm == 49) {
                                        am2 = 6;
                                        bm2 = 9;
                                    } else if (cm == 50) {
                                        am2 = 5;
                                        bm2 = 10;
                                    } else if (cm == 51) {
                                        am2 = 5;
                                        bm2 = 10;
                                    } else if (cm == 52) {
                                        am2 = 5;
                                        bm2 = 9;
                                    } else if (cm == 53) {
                                        am2 = 5;
                                        bm2 = 8;
                                    } else if (cm == 54) {
                                        am2 = 5;
                                        bm2 = 7;
                                    } else if (cm == 55) {
                                        am2 = 5;
                                        bm2 = 6;
                                    } else if (cm == 56) {
                                        am2 = 5;
                                        bm2 = 5;
                                    } else if (cm == 57) {
                                        am2 = 5;
                                        bm2 = 4;
                                    } else if (cm == 58) {
                                        am2 = 5;
                                        bm2 = 3;
                                    } else if (cm == 59) {
                                        am2 = 5;
                                        bm2 = 2;
                                    } else if (cm == 60) {
                                        am2 = 5;
                                        bm2 = 1;
                                    } else if (cm == 61) {
                                        am2 = 4;
                                        bm2 = 1;
                                    } else if (cm == 62) {
                                        am2 = 4;
                                        bm2 = 2;
                                    } else if (cm == 63) {
                                        am2 = 4;
                                        bm2 = 3;
                                    } else if (cm == 64) {
                                        am2 = 4;
                                        bm2 = 4;
                                    } else if (cm == 65) {
                                        am2 = 4;
                                        bm2 = 5;
                                    } else if (cm == 66) {
                                        am2 = 4;
                                        bm2 = 6;
                                    } else if (cm == 67) {
                                        am2 = 4;
                                        bm2 = 7;
                                    } else if (cm == 68) {
                                        am2 = 4;
                                        bm2 = 8;
                                    } else if (cm == 69) {
                                        am2 = 4;
                                        bm2 = 9;
                                    } else if (cm == 70) {
                                        am2 = 4;
                                        bm2 = 10;
                                    } else if (cm == 71) {
                                        am2 = 3;
                                        bm2 = 10;
                                    } else if (cm == 72) {
                                        am2 = 3;
                                        bm2 = 9;
                                    } else if (cm == 73) {
                                        am2 = 3;
                                        bm2 = 8;
                                    } else if (cm == 74) {
                                        am2 = 3;
                                        bm2 = 7;
                                    } else if (cm == 75) {
                                        am2 = 3;
                                        bm2 = 6;
                                    } else if (cm == 76) {
                                        am2 = 3;
                                        bm2 = 5;
                                    } else if (cm == 77) {
                                        am2 = 3;
                                        bm2 = 4;
                                    } else if (cm == 78) {
                                        am2 = 3;
                                        bm2 = 3;
                                    } else if (cm == 79) {
                                        am2 = 3;
                                        bm2 = 2;
                                    } else if (cm == 80) {
                                        am2 = 3;
                                        bm2 = 1;
                                    } else if (cm == 81) {
                                        am2 = 2;
                                        bm2 = 1;
                                    } else if (cm == 82) {
                                        am2 = 2;
                                        bm2 = 2;
                                    } else if (cm == 83) {
                                        am2 = 2;
                                        bm2 = 3;
                                    } else if (cm == 84) {
                                        am2 = 2;
                                        bm2 = 4;
                                    } else if (cm == 85) {
                                        am2 = 2;
                                        bm2 = 5;
                                    } else if (cm == 86) {
                                        am2 = 2;
                                        bm2 = 6;
                                    } else if (cm == 87) {
                                        am2 = 2;
                                        bm2 = 7;
                                    } else if (cm == 88) {
                                        am2 = 2;
                                        bm2 = 8;
                                    } else if (cm == 89) {
                                        am2 = 2;
                                        bm2 = 9;
                                    } else if (cm == 90) {
                                        am2 = 2;
                                        bm2 = 10;
                                    } else if (cm == 91) {
                                        am2 = 1;
                                        bm2 = 10;
                                    } else if (cm == 92) {
                                        am2 = 1;
                                        bm2 = 9;
                                    } else if (cm == 93) {
                                        am2 = 1;
                                        bm2 = 8;
                                    } else if (cm == 94) {
                                        am2 = 1;
                                        bm2 = 7;
                                    } else if (cm == 95) {
                                        am2 = 1;
                                        bm2 = 6;
                                    } else if (cm == 96) {
                                        am2 = 1;
                                        bm2 = 5;
                                    } else if (cm == 97) {
                                        am2 = 1;
                                        bm2 = 4;
                                    } else if (cm == 98) {
                                        am2 = 1;
                                        bm2 = 3;
                                    } else if (cm == 99) {
                                        am2 = 1;
                                        bm2 = 2;
                                    } else if (cm == 100) {
                                        am2 = 1;
                                        bm2 = 1;
                                    }
                                }
                            }
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            
                            String colo = null;
                            String colo1 = null;
                            String colo2 = null;
                            String colo3 = null;
                            colo = colors.get(0);
                            if (colors.get(1) != null) {
                                colo1 = colors.get(1);
                            }
                            if (colors.get(2) != null) {
                                colo2 = colors.get(2);
                            }
   
                            for (int i = 1; i < 11; i++) {
                                out.println("<tr>");
                                for (int j = 1; j < 11; j++) {
                                    if (i == am && j == bm) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo + ".gif");
                                        out.println("</td>");
                                    } else if (i == am1 && j == bm1) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo1 + ".gif");
                                        out.println("</td>");
                                    } else if (i == am2 && j == bm2 && colo2 != null) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo2 + ".gif");
                                        out.println("</td>");
                                    } //                            else if (i == am3 && j == bm3 && colo3 != null) {
                                    //                                out.println("<td width=10% height=10% >");
                                    //                                out.println("<img src='" + colo3 + ".png'");
                                    //                                out.println("</td>");
                                    else {
                                        out.println("<td width=10% height=10% >");

                                        out.println("</td>");
                                    }
                                }
                                out.println("</tr>");
                            }










                        } else if (counnn == 4 && maxxx == counnn) {


                            cup = position.get(0);
                            if (position.get(1) != null) {
                                cup1 = position.get(1);
                            }
                            if (position.get(2) != null) {
                                cup2 = position.get(2);
                            }
                            if (position.get(3) != null) {
                                cup2 = position.get(3);
                            }

                            cm = cup;
                            if (cm != 0) {
                                if (cm == 1) {
                                    am = 10;
                                    bm = 1;
                                } else if (cm == 2) {
                                    am = 10;
                                    bm = 2;
                                } else if (cm == 3) {
                                    am = 10;
                                    bm = 3;
                                } else if (cm == 4) {
                                    am = 10;
                                    bm = 4;
                                } else if (cm == 5) {
                                    am = 10;
                                    bm = 5;
                                } else if (cm == 6) {
                                    am = 10;
                                    bm = 6;
                                } else if (cm == 7) {
                                    am = 10;
                                    bm = 7;
                                } else if (cm == 8) {
                                    am = 10;
                                    bm = 8;
                                } else if (cm == 9) {
                                    am = 10;
                                    bm = 9;
                                } else if (cm == 10) {
                                    am = 10;
                                    bm = 10;
                                } else if (cm == 11) {
                                    am = 9;
                                    bm = 10;
                                } else if (cm == 12) {
                                    am = 9;
                                    bm = 9;
                                } else if (cm == 13) {
                                    am = 9;
                                    bm = 8;
                                } else if (cm == 14) {
                                    am = 9;
                                    bm = 7;
                                } else if (cm == 15) {
                                    am = 9;
                                    bm = 6;
                                } else if (cm == 16) {
                                    am = 9;
                                    bm = 4;
                                } else if (cm == 17) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 18) {
                                    am = 9;
                                    bm = 3;
                                } else if (cm == 19) {
                                    am = 9;
                                    bm = 2;
                                } else if (cm == 20) {
                                    am = 9;
                                    bm = 1;
                                } else if (cm == 21) {
                                    am = 8;
                                    bm = 1;
                                } else if (cm == 22) {
                                    am = 8;
                                    bm = 2;
                                } else if (cm == 23) {
                                    am = 8;
                                    bm = 3;
                                } else if (cm == 24) {
                                    am = 8;
                                    bm = 4;
                                } else if (cm == 25) {
                                    am = 8;
                                    bm = 5;
                                } else if (cm == 26) {
                                    am = 8;
                                    bm = 6;
                                } else if (cm == 27) {
                                    am = 8;
                                    bm = 7;
                                } else if (cm == 28) {
                                    am = 8;
                                    bm = 8;
                                } else if (cm == 29) {
                                    am = 8;
                                    bm = 9;
                                } else if (cm == 30) {
                                    am = 8;
                                    bm = 10;
                                } else if (cm == 31) {
                                    am = 7;
                                    bm = 10;
                                } else if (cm == 32) {
                                    am = 7;
                                    bm = 9;
                                } else if (cm == 33) {
                                    am = 7;
                                    bm = 8;
                                } else if (cm == 34) {
                                    am = 7;
                                    bm = 7;
                                } else if (cm == 35) {
                                    am = 7;
                                    bm = 6;
                                } else if (cm == 36) {
                                    am = 7;
                                    bm = 5;
                                } else if (cm == 37) {
                                    am = 7;
                                    bm = 4;
                                } else if (cm == 38) {
                                    am = 7;
                                    bm = 3;
                                } else if (cm == 39) {
                                    am = 7;
                                    bm = 2;
                                } else if (cm == 40) {
                                    am = 7;
                                    bm = 1;
                                } else if (cm == 41) {
                                    am = 6;
                                    bm = 1;
                                } else if (cm == 42) {
                                    am = 6;
                                    bm = 2;
                                } else if (cm == 43) {
                                    am = 6;
                                    bm = 3;
                                } else if (cm == 44) {
                                    am = 6;
                                    bm = 4;
                                } else if (cm == 45) {
                                    am = 6;
                                    bm = 5;
                                } else if (cm == 46) {
                                    am = 6;
                                    bm = 6;
                                } else if (cm == 47) {
                                    am = 6;
                                    bm = 7;
                                } else if (cm == 48) {
                                    am = 6;
                                    bm = 8;
                                } else if (cm == 49) {
                                    am = 6;
                                    bm = 9;
                                } else if (cm == 50) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 51) {
                                    am = 5;
                                    bm = 10;
                                } else if (cm == 52) {
                                    am = 5;
                                    bm = 9;
                                } else if (cm == 53) {
                                    am = 5;
                                    bm = 8;
                                } else if (cm == 54) {
                                    am = 5;
                                    bm = 7;
                                } else if (cm == 55) {
                                    am = 5;
                                    bm = 6;
                                } else if (cm == 56) {
                                    am = 5;
                                    bm = 5;
                                } else if (cm == 57) {
                                    am = 5;
                                    bm = 4;
                                } else if (cm == 58) {
                                    am = 5;
                                    bm = 3;
                                } else if (cm == 59) {
                                    am = 5;
                                    bm = 2;
                                } else if (cm == 60) {
                                    am = 5;
                                    bm = 1;
                                } else if (cm == 61) {
                                    am = 4;
                                    bm = 1;
                                } else if (cm == 62) {
                                    am = 4;
                                    bm = 2;
                                } else if (cm == 63) {
                                    am = 4;
                                    bm = 3;
                                } else if (cm == 64) {
                                    am = 4;
                                    bm = 4;
                                } else if (cm == 65) {
                                    am = 4;
                                    bm = 5;
                                } else if (cm == 66) {
                                    am = 4;
                                    bm = 6;
                                } else if (cm == 67) {
                                    am = 4;
                                    bm = 7;
                                } else if (cm == 68) {
                                    am = 4;
                                    bm = 8;
                                } else if (cm == 69) {
                                    am = 4;
                                    bm = 9;
                                } else if (cm == 70) {
                                    am = 4;
                                    bm = 10;
                                } else if (cm == 71) {
                                    am = 3;
                                    bm = 10;
                                } else if (cm == 72) {
                                    am = 3;
                                    bm = 9;
                                } else if (cm == 73) {
                                    am = 3;
                                    bm = 8;
                                } else if (cm == 74) {
                                    am = 3;
                                    bm = 7;
                                } else if (cm == 75) {
                                    am = 3;
                                    bm = 6;
                                } else if (cm == 76) {
                                    am = 3;
                                    bm = 5;
                                } else if (cm == 77) {
                                    am = 3;
                                    bm = 4;
                                } else if (cm == 78) {
                                    am = 3;
                                    bm = 3;
                                } else if (cm == 79) {
                                    am = 3;
                                    bm = 2;
                                } else if (cm == 80) {
                                    am = 3;
                                    bm = 1;
                                } else if (cm == 81) {
                                    am = 2;
                                    bm = 1;
                                } else if (cm == 82) {
                                    am = 2;
                                    bm = 2;
                                } else if (cm == 83) {
                                    am = 2;
                                    bm = 3;
                                } else if (cm == 84) {
                                    am = 2;
                                    bm = 4;
                                } else if (cm == 85) {
                                    am = 2;
                                    bm = 5;
                                } else if (cm == 86) {
                                    am = 2;
                                    bm = 6;
                                } else if (cm == 87) {
                                    am = 2;
                                    bm = 7;
                                } else if (cm == 88) {
                                    am = 2;
                                    bm = 8;
                                } else if (cm == 89) {
                                    am = 2;
                                    bm = 9;
                                } else if (cm == 90) {
                                    am = 2;
                                    bm = 10;
                                } else if (cm == 91) {
                                    am = 1;
                                    bm = 10;
                                } else if (cm == 92) {
                                    am = 1;
                                    bm = 9;
                                } else if (cm == 93) {
                                    am = 1;
                                    bm = 8;
                                } else if (cm == 94) {
                                    am = 1;
                                    bm = 7;
                                } else if (cm == 95) {
                                    am = 1;
                                    bm = 6;
                                } else if (cm == 96) {
                                    am = 1;
                                    bm = 5;
                                } else if (cm == 97) {
                                    am = 1;
                                    bm = 4;
                                } else if (cm == 98) {
                                    am = 1;
                                    bm = 3;
                                } else if (cm == 99) {
                                    am = 1;
                                    bm = 2;
                                } else if (cm == 100) {
                                    am = 1;
                                    bm = 1;
                                }
                            }
                            cm = cup1;

                            if (cm != 0) {
                                if (cm == 1) {
                                    am1 = 10;
                                    bm1 = 1;
                                } else if (cm == 2) {
                                    am1 = 10;
                                    bm1 = 2;
                                } else if (cm == 3) {
                                    am1 = 10;
                                    bm1 = 3;
                                } else if (cm == 4) {
                                    am1 = 10;
                                    bm1 = 4;
                                } else if (cm == 5) {
                                    am1 = 10;
                                    bm1 = 5;
                                } else if (cm == 6) {
                                    am1 = 10;
                                    bm1 = 6;
                                } else if (cm == 7) {
                                    am1 = 10;
                                    bm1 = 7;
                                } else if (cm == 8) {
                                    am1 = 10;
                                    bm1 = 8;
                                } else if (cm == 9) {
                                    am1 = 10;
                                    bm1 = 9;
                                } else if (cm == 10) {
                                    am1 = 10;
                                    bm1 = 10;
                                } else if (cm == 11) {
                                    am1 = 9;
                                    bm1 = 10;
                                } else if (cm == 12) {
                                    am1 = 9;
                                    bm1 = 9;
                                } else if (cm == 13) {
                                    am1 = 9;
                                    bm1 = 8;
                                } else if (cm == 14) {
                                    am1 = 9;
                                    bm1 = 7;
                                } else if (cm == 15) {
                                    am1 = 9;
                                    bm1 = 6;
                                } else if (cm == 16) {
                                    am1 = 9;
                                    bm1 = 4;
                                } else if (cm == 17) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 18) {
                                    am1 = 9;
                                    bm1 = 3;
                                } else if (cm == 19) {
                                    am1 = 9;
                                    bm1 = 2;
                                } else if (cm == 20) {
                                    am1 = 9;
                                    bm1 = 1;
                                } else if (cm == 21) {
                                    am1 = 8;
                                    bm1 = 1;
                                } else if (cm == 22) {
                                    am1 = 8;
                                    bm1 = 2;
                                } else if (cm == 23) {
                                    am1 = 8;
                                    bm1 = 3;
                                } else if (cm == 24) {
                                    am1 = 8;
                                    bm1 = 4;
                                } else if (cm == 25) {
                                    am1 = 8;
                                    bm1 = 5;
                                } else if (cm == 26) {
                                    am1 = 8;
                                    bm1 = 6;
                                } else if (cm == 27) {
                                    am1 = 8;
                                    bm1 = 7;
                                } else if (cm == 28) {
                                    am1 = 8;
                                    bm1 = 8;
                                } else if (cm == 29) {
                                    am1 = 8;
                                    bm1 = 9;
                                } else if (cm == 30) {
                                    am1 = 8;
                                    bm1 = 10;
                                } else if (cm == 31) {
                                    am1 = 7;
                                    bm1 = 10;
                                } else if (cm == 32) {
                                    am1 = 7;
                                    bm1 = 9;
                                } else if (cm == 33) {
                                    am1 = 7;
                                    bm1 = 8;
                                } else if (cm == 34) {
                                    am1 = 7;
                                    bm1 = 7;
                                } else if (cm == 35) {
                                    am1 = 7;
                                    bm1 = 6;
                                } else if (cm == 36) {
                                    am1 = 7;
                                    bm1 = 5;
                                } else if (cm == 37) {
                                    am1 = 7;
                                    bm1 = 4;
                                } else if (cm == 38) {
                                    am1 = 7;
                                    bm1 = 3;
                                } else if (cm == 39) {
                                    am1 = 7;
                                    bm1 = 2;
                                } else if (cm == 40) {
                                    am1 = 7;
                                    bm1 = 1;
                                } else if (cm == 41) {
                                    am1 = 6;
                                    bm1 = 1;
                                } else if (cm == 42) {
                                    am1 = 6;
                                    bm1 = 2;
                                } else if (cm == 43) {
                                    am1 = 6;
                                    bm1 = 3;
                                } else if (cm == 44) {
                                    am1 = 6;
                                    bm1 = 4;
                                } else if (cm == 45) {
                                    am1 = 6;
                                    bm1 = 5;
                                } else if (cm == 46) {
                                    am1 = 6;
                                    bm1 = 6;
                                } else if (cm == 47) {
                                    am1 = 6;
                                    bm1 = 7;
                                } else if (cm == 48) {
                                    am1 = 6;
                                    bm1 = 8;
                                } else if (cm == 49) {
                                    am1 = 6;
                                    bm1 = 9;
                                } else if (cm == 50) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 51) {
                                    am1 = 5;
                                    bm1 = 10;
                                } else if (cm == 52) {
                                    am1 = 5;
                                    bm1 = 9;
                                } else if (cm == 53) {
                                    am1 = 5;
                                    bm1 = 8;
                                } else if (cm == 54) {
                                    am1 = 5;
                                    bm1 = 7;
                                } else if (cm == 55) {
                                    am1 = 5;
                                    bm1 = 6;
                                } else if (cm == 56) {
                                    am1 = 5;
                                    bm1 = 5;
                                } else if (cm == 57) {
                                    am1 = 5;
                                    bm1 = 4;
                                } else if (cm == 58) {
                                    am1 = 5;
                                    bm1 = 3;
                                } else if (cm == 59) {
                                    am1 = 5;
                                    bm1 = 2;
                                } else if (cm == 60) {
                                    am1 = 5;
                                    bm1 = 1;
                                } else if (cm == 61) {
                                    am1 = 4;
                                    bm1 = 1;
                                } else if (cm == 62) {
                                    am1 = 4;
                                    bm1 = 2;
                                } else if (cm == 63) {
                                    am1 = 4;
                                    bm1 = 3;
                                } else if (cm == 64) {
                                    am1 = 4;
                                    bm1 = 4;
                                } else if (cm == 65) {
                                    am1 = 4;
                                    bm1 = 5;
                                } else if (cm == 66) {
                                    am1 = 4;
                                    bm1 = 6;
                                } else if (cm == 67) {
                                    am1 = 4;
                                    bm1 = 7;
                                } else if (cm == 68) {
                                    am1 = 4;
                                    bm1 = 8;
                                } else if (cm == 69) {
                                    am1 = 4;
                                    bm1 = 9;
                                } else if (cm == 70) {
                                    am1 = 4;
                                    bm1 = 10;
                                } else if (cm == 71) {
                                    am1 = 3;
                                    bm1 = 10;
                                } else if (cm == 72) {
                                    am1 = 3;
                                    bm1 = 9;
                                } else if (cm == 73) {
                                    am1 = 3;
                                    bm1 = 8;
                                } else if (cm == 74) {
                                    am1 = 3;
                                    bm1 = 7;
                                } else if (cm == 75) {
                                    am1 = 3;
                                    bm1 = 6;
                                } else if (cm == 76) {
                                    am1 = 3;
                                    bm1 = 5;
                                } else if (cm == 77) {
                                    am1 = 3;
                                    bm1 = 4;
                                } else if (cm == 78) {
                                    am1 = 3;
                                    bm1 = 3;
                                } else if (cm == 79) {
                                    am1 = 3;
                                    bm1 = 2;
                                } else if (cm == 80) {
                                    am1 = 3;
                                    bm1 = 1;
                                } else if (cm == 81) {
                                    am1 = 2;
                                    bm1 = 1;
                                } else if (cm == 82) {
                                    am1 = 2;
                                    bm1 = 2;
                                } else if (cm == 83) {
                                    am1 = 2;
                                    bm1 = 3;
                                } else if (cm == 84) {
                                    am1 = 2;
                                    bm1 = 4;
                                } else if (cm == 85) {
                                    am1 = 2;
                                    bm1 = 5;
                                } else if (cm == 86) {
                                    am1 = 2;
                                    bm1 = 6;
                                } else if (cm == 87) {
                                    am1 = 2;
                                    bm1 = 7;
                                } else if (cm == 88) {
                                    am1 = 2;
                                    bm1 = 8;
                                } else if (cm == 89) {
                                    am1 = 2;
                                    bm1 = 9;
                                } else if (cm == 90) {
                                    am1 = 2;
                                    bm1 = 10;
                                } else if (cm == 91) {
                                    am1 = 1;
                                    bm1 = 10;
                                } else if (cm == 92) {
                                    am1 = 1;
                                    bm1 = 9;
                                } else if (cm == 93) {
                                    am1 = 1;
                                    bm1 = 8;
                                } else if (cm == 94) {
                                    am1 = 1;
                                    bm1 = 7;
                                } else if (cm == 95) {
                                    am1 = 1;
                                    bm1 = 6;
                                } else if (cm == 96) {
                                    am1 = 1;
                                    bm1 = 5;
                                } else if (cm == 97) {
                                    am1 = 1;
                                    bm1 = 4;
                                } else if (cm == 98) {
                                    am1 = 1;
                                    bm1 = 3;
                                } else if (cm == 99) {
                                    am1 = 1;
                                    bm1 = 2;
                                } else if (cm == 100) {
                                    am1 = 1;
                                    bm1 = 1;
                                }
                            }
                            if (cup2 != 0) {
                                cm = cup2;

                                if (cm != 0) {
                                    if (cm == 1) {
                                        am2 = 10;
                                        bm2 = 1;
                                    } else if (cm == 2) {
                                        am2 = 10;
                                        bm2 = 2;
                                    } else if (cm == 3) {
                                        am2 = 10;
                                        bm2 = 3;
                                    } else if (cm == 4) {
                                        am2 = 10;
                                        bm2 = 4;
                                    } else if (cm == 5) {
                                        am2 = 10;
                                        bm2 = 5;
                                    } else if (cm == 6) {
                                        am2 = 10;
                                        bm2 = 6;
                                    } else if (cm == 7) {
                                        am2 = 10;
                                        bm2 = 7;
                                    } else if (cm == 8) {
                                        am2 = 10;
                                        bm2 = 8;
                                    } else if (cm == 9) {
                                        am2 = 10;
                                        bm2 = 9;
                                    } else if (cm == 10) {
                                        am2 = 10;
                                        bm2 = 10;
                                    } else if (cm == 11) {
                                        am2 = 9;
                                        bm2 = 10;
                                    } else if (cm == 12) {
                                        am2 = 9;
                                        bm2 = 9;
                                    } else if (cm == 13) {
                                        am2 = 9;
                                        bm2 = 8;
                                    } else if (cm == 14) {
                                        am2 = 9;
                                        bm2 = 7;
                                    } else if (cm == 15) {
                                        am2 = 9;
                                        bm2 = 6;
                                    } else if (cm == 16) {
                                        am2 = 9;
                                        bm2 = 4;
                                    } else if (cm == 17) {
                                        am2 = 9;
                                        bm2 = 3;
                                    } else if (cm == 18) {
                                        am2 = 9;
                                        bm2 = 3;
                                    } else if (cm == 19) {
                                        am2 = 9;
                                        bm2 = 2;
                                    } else if (cm == 20) {
                                        am2 = 9;
                                        bm2 = 1;
                                    } else if (cm == 21) {
                                        am2 = 8;
                                        bm2 = 1;
                                    } else if (cm == 22) {
                                        am2 = 8;
                                        bm2 = 2;
                                    } else if (cm == 23) {
                                        am2 = 8;
                                        bm2 = 3;
                                    } else if (cm == 24) {
                                        am2 = 8;
                                        bm2 = 4;
                                    } else if (cm == 25) {
                                        am2 = 8;
                                        bm2 = 5;
                                    } else if (cm == 26) {
                                        am2 = 8;
                                        bm2 = 6;
                                    } else if (cm == 27) {
                                        am2 = 8;
                                        bm2 = 7;
                                    } else if (cm == 28) {
                                        am2 = 8;
                                        bm2 = 8;
                                    } else if (cm == 29) {
                                        am2 = 8;
                                        bm2 = 9;
                                    } else if (cm == 30) {
                                        am2 = 8;
                                        bm2 = 10;
                                    } else if (cm == 31) {
                                        am2 = 7;
                                        bm2 = 10;
                                    } else if (cm == 32) {
                                        am2 = 7;
                                        bm2 = 9;
                                    } else if (cm == 33) {
                                        am2 = 7;
                                        bm2 = 8;
                                    } else if (cm == 34) {
                                        am2 = 7;
                                        bm2 = 7;
                                    } else if (cm == 35) {
                                        am2 = 7;
                                        bm2 = 6;
                                    } else if (cm == 36) {
                                        am2 = 7;
                                        bm2 = 5;
                                    } else if (cm == 37) {
                                        am2 = 7;
                                        bm2 = 4;
                                    } else if (cm == 38) {
                                        am2 = 7;
                                        bm2 = 3;
                                    } else if (cm == 39) {
                                        am2 = 7;
                                        bm2 = 2;
                                    } else if (cm == 40) {
                                        am2 = 7;
                                        bm2 = 1;
                                    } else if (cm == 41) {
                                        am2 = 6;
                                        bm2 = 1;
                                    } else if (cm == 42) {
                                        am2 = 6;
                                        bm2 = 2;
                                    } else if (cm == 43) {
                                        am2 = 6;
                                        bm2 = 3;
                                    } else if (cm == 44) {
                                        am2 = 6;
                                        bm2 = 4;
                                    } else if (cm == 45) {
                                        am2 = 6;
                                        bm2 = 5;
                                    } else if (cm == 46) {
                                        am2 = 6;
                                        bm2 = 6;
                                    } else if (cm == 47) {
                                        am2 = 6;
                                        bm2 = 7;
                                    } else if (cm == 48) {
                                        am2 = 6;
                                        bm2 = 8;
                                    } else if (cm == 49) {
                                        am2 = 6;
                                        bm2 = 9;
                                    } else if (cm == 50) {
                                        am2 = 5;
                                        bm2 = 10;
                                    } else if (cm == 51) {
                                        am2 = 5;
                                        bm2 = 10;
                                    } else if (cm == 52) {
                                        am2 = 5;
                                        bm2 = 9;
                                    } else if (cm == 53) {
                                        am2 = 5;
                                        bm2 = 8;
                                    } else if (cm == 54) {
                                        am2 = 5;
                                        bm2 = 7;
                                    } else if (cm == 55) {
                                        am2 = 5;
                                        bm2 = 6;
                                    } else if (cm == 56) {
                                        am2 = 5;
                                        bm2 = 5;
                                    } else if (cm == 57) {
                                        am2 = 5;
                                        bm2 = 4;
                                    } else if (cm == 58) {
                                        am2 = 5;
                                        bm2 = 3;
                                    } else if (cm == 59) {
                                        am2 = 5;
                                        bm2 = 2;
                                    } else if (cm == 60) {
                                        am2 = 5;
                                        bm2 = 1;
                                    } else if (cm == 61) {
                                        am2 = 4;
                                        bm2 = 1;
                                    } else if (cm == 62) {
                                        am2 = 4;
                                        bm2 = 2;
                                    } else if (cm == 63) {
                                        am2 = 4;
                                        bm2 = 3;
                                    } else if (cm == 64) {
                                        am2 = 4;
                                        bm2 = 4;
                                    } else if (cm == 65) {
                                        am2 = 4;
                                        bm2 = 5;
                                    } else if (cm == 66) {
                                        am2 = 4;
                                        bm2 = 6;
                                    } else if (cm == 67) {
                                        am2 = 4;
                                        bm2 = 7;
                                    } else if (cm == 68) {
                                        am2 = 4;
                                        bm2 = 8;
                                    } else if (cm == 69) {
                                        am2 = 4;
                                        bm2 = 9;
                                    } else if (cm == 70) {
                                        am2 = 4;
                                        bm2 = 10;
                                    } else if (cm == 71) {
                                        am2 = 3;
                                        bm2 = 10;
                                    } else if (cm == 72) {
                                        am2 = 3;
                                        bm2 = 9;
                                    } else if (cm == 73) {
                                        am2 = 3;
                                        bm2 = 8;
                                    } else if (cm == 74) {
                                        am2 = 3;
                                        bm2 = 7;
                                    } else if (cm == 75) {
                                        am2 = 3;
                                        bm2 = 6;
                                    } else if (cm == 76) {
                                        am2 = 3;
                                        bm2 = 5;
                                    } else if (cm == 77) {
                                        am2 = 3;
                                        bm2 = 4;
                                    } else if (cm == 78) {
                                        am2 = 3;
                                        bm2 = 3;
                                    } else if (cm == 79) {
                                        am2 = 3;
                                        bm2 = 2;
                                    } else if (cm == 80) {
                                        am2 = 3;
                                        bm2 = 1;
                                    } else if (cm == 81) {
                                        am2 = 2;
                                        bm2 = 1;
                                    } else if (cm == 82) {
                                        am2 = 2;
                                        bm2 = 2;
                                    } else if (cm == 83) {
                                        am2 = 2;
                                        bm2 = 3;
                                    } else if (cm == 84) {
                                        am2 = 2;
                                        bm2 = 4;
                                    } else if (cm == 85) {
                                        am2 = 2;
                                        bm2 = 5;
                                    } else if (cm == 86) {
                                        am2 = 2;
                                        bm2 = 6;
                                    } else if (cm == 87) {
                                        am2 = 2;
                                        bm2 = 7;
                                    } else if (cm == 88) {
                                        am2 = 2;
                                        bm2 = 8;
                                    } else if (cm == 89) {
                                        am2 = 2;
                                        bm2 = 9;
                                    } else if (cm == 90) {
                                        am2 = 2;
                                        bm2 = 10;
                                    } else if (cm == 91) {
                                        am2 = 1;
                                        bm2 = 10;
                                    } else if (cm == 92) {
                                        am2 = 1;
                                        bm2 = 9;
                                    } else if (cm == 93) {
                                        am2 = 1;
                                        bm2 = 8;
                                    } else if (cm == 94) {
                                        am2 = 1;
                                        bm2 = 7;
                                    } else if (cm == 95) {
                                        am2 = 1;
                                        bm2 = 6;
                                    } else if (cm == 96) {
                                        am2 = 1;
                                        bm2 = 5;
                                    } else if (cm == 97) {
                                        am2 = 1;
                                        bm2 = 4;
                                    } else if (cm == 98) {
                                        am2 = 1;
                                        bm2 = 3;
                                    } else if (cm == 99) {
                                        am2 = 1;
                                        bm2 = 2;
                                    } else if (cm == 100) {
                                        am2 = 1;
                                        bm2 = 1;
                                    }
                                }
                            }
                            if (cup3 != 0) {
                                cm = cup3;


                                if (cm != 0) {
                                    if (cm == 1) {
                                        am3 = 10;
                                        bm3 = 1;
                                    } else if (cm == 2) {
                                        am3 = 10;
                                        bm3 = 2;
                                    } else if (cm == 3) {
                                        am3 = 10;
                                        bm3 = 3;
                                    } else if (cm == 4) {
                                        am3 = 10;
                                        bm3 = 4;
                                    } else if (cm == 5) {
                                        am3 = 10;
                                        bm3 = 5;
                                    } else if (cm == 6) {
                                        am3 = 10;
                                        bm3 = 6;
                                    } else if (cm == 7) {
                                        am3 = 10;
                                        bm3 = 7;
                                    } else if (cm == 8) {
                                        am3 = 10;
                                        bm3 = 8;
                                    } else if (cm == 9) {
                                        am3 = 10;
                                        bm3 = 9;
                                    } else if (cm == 10) {
                                        am3 = 10;
                                        bm3 = 10;
                                    } else if (cm == 11) {
                                        am3 = 9;
                                        bm3 = 10;
                                    } else if (cm == 12) {
                                        am3 = 9;
                                        bm3 = 9;
                                    } else if (cm == 13) {
                                        am3 = 9;
                                        bm3 = 8;
                                    } else if (cm == 14) {
                                        am3 = 9;
                                        bm3 = 7;
                                    } else if (cm == 15) {
                                        am3 = 9;
                                        bm3 = 6;
                                    } else if (cm == 16) {
                                        am3 = 9;
                                        bm3 = 4;
                                    } else if (cm == 17) {
                                        am3 = 9;
                                        bm3 = 3;
                                    } else if (cm == 18) {
                                        am3 = 9;
                                        bm3 = 3;
                                    } else if (cm == 19) {
                                        am3 = 9;
                                        bm3 = 2;
                                    } else if (cm == 20) {
                                        am3 = 9;
                                        bm3 = 1;
                                    } else if (cm == 21) {
                                        am3 = 8;
                                        bm3 = 1;
                                    } else if (cm == 22) {
                                        am3 = 8;
                                        bm3 = 2;
                                    } else if (cm == 23) {
                                        am3 = 8;
                                        bm3 = 3;
                                    } else if (cm == 24) {
                                        am3 = 8;
                                        bm3 = 4;
                                    } else if (cm == 25) {
                                        am3 = 8;
                                        bm3 = 5;
                                    } else if (cm == 26) {
                                        am3 = 8;
                                        bm3 = 6;
                                    } else if (cm == 27) {
                                        am3 = 8;
                                        bm3 = 7;
                                    } else if (cm == 28) {
                                        am3 = 8;
                                        bm3 = 8;
                                    } else if (cm == 29) {
                                        am3 = 8;
                                        bm3 = 9;
                                    } else if (cm == 30) {
                                        am3 = 8;
                                        bm3 = 10;
                                    } else if (cm == 31) {
                                        am3 = 7;
                                        bm3 = 10;
                                    } else if (cm == 32) {
                                        am3 = 7;
                                        bm3 = 9;
                                    } else if (cm == 33) {
                                        am3 = 7;
                                        bm3 = 8;
                                    } else if (cm == 34) {
                                        am3 = 7;
                                        bm3 = 7;
                                    } else if (cm == 35) {
                                        am3 = 7;
                                        bm3 = 6;
                                    } else if (cm == 36) {
                                        am3 = 7;
                                        bm3 = 5;
                                    } else if (cm == 37) {
                                        am3 = 7;
                                        bm3 = 4;
                                    } else if (cm == 38) {
                                        am3 = 7;
                                        bm3 = 3;
                                    } else if (cm == 39) {
                                        am3 = 7;
                                        bm3 = 2;
                                    } else if (cm == 40) {
                                        am3 = 7;
                                        bm3 = 1;
                                    } else if (cm == 41) {
                                        am3 = 6;
                                        bm3 = 1;
                                    } else if (cm == 42) {
                                        am3 = 6;
                                        bm3 = 2;
                                    } else if (cm == 43) {
                                        am3 = 6;
                                        bm3 = 3;
                                    } else if (cm == 44) {
                                        am3 = 6;
                                        bm3 = 4;
                                    } else if (cm == 45) {
                                        am3 = 6;
                                        bm3 = 5;
                                    } else if (cm == 46) {
                                        am3 = 6;
                                        bm3 = 6;
                                    } else if (cm == 47) {
                                        am3 = 6;
                                        bm3 = 7;
                                    } else if (cm == 48) {
                                        am3 = 6;
                                        bm3 = 8;
                                    } else if (cm == 49) {
                                        am3 = 6;
                                        bm3 = 9;
                                    } else if (cm == 50) {
                                        am3 = 5;
                                        bm3 = 10;
                                    } else if (cm == 51) {
                                        am3 = 5;
                                        bm3 = 10;
                                    } else if (cm == 52) {
                                        am3 = 5;
                                        bm3 = 9;
                                    } else if (cm == 53) {
                                        am3 = 5;
                                        bm3 = 8;
                                    } else if (cm == 54) {
                                        am3 = 5;
                                        bm3 = 7;
                                    } else if (cm == 55) {
                                        am3 = 5;
                                        bm3 = 6;
                                    } else if (cm == 56) {
                                        am3 = 5;
                                        bm3 = 5;
                                    } else if (cm == 57) {
                                        am3 = 5;
                                        bm3 = 4;
                                    } else if (cm == 58) {
                                        am3 = 5;
                                        bm3 = 3;
                                    } else if (cm == 59) {
                                        am3 = 5;
                                        bm3 = 2;
                                    } else if (cm == 60) {
                                        am3 = 5;
                                        bm3 = 1;
                                    } else if (cm == 61) {
                                        am3 = 4;
                                        bm3 = 1;
                                    } else if (cm == 62) {
                                        am3 = 4;
                                        bm3 = 2;
                                    } else if (cm == 63) {
                                        am3 = 4;
                                        bm3 = 3;
                                    } else if (cm == 64) {
                                        am3 = 4;
                                        bm3 = 4;
                                    } else if (cm == 65) {
                                        am3 = 4;
                                        bm3 = 5;
                                    } else if (cm == 66) {
                                        am3 = 4;
                                        bm3 = 6;
                                    } else if (cm == 67) {
                                        am3 = 4;
                                        bm3 = 7;
                                    } else if (cm == 68) {
                                        am3 = 4;
                                        bm3 = 8;
                                    } else if (cm == 69) {
                                        am3 = 4;
                                        bm3 = 9;
                                    } else if (cm == 70) {
                                        am3 = 4;
                                        bm3 = 10;
                                    } else if (cm == 71) {
                                        am3 = 3;
                                        bm3 = 10;
                                    } else if (cm == 72) {
                                        am3 = 3;
                                        bm3 = 9;
                                    } else if (cm == 73) {
                                        am3 = 3;
                                        bm3 = 8;
                                    } else if (cm == 74) {
                                        am3 = 3;
                                        bm3 = 7;
                                    } else if (cm == 75) {
                                        am3 = 3;
                                        bm3 = 6;
                                    } else if (cm == 76) {
                                        am3 = 3;
                                        bm3 = 5;
                                    } else if (cm == 77) {
                                        am3 = 3;
                                        bm3 = 4;
                                    } else if (cm == 78) {
                                        am3 = 3;
                                        bm3 = 3;
                                    } else if (cm == 79) {
                                        am3 = 3;
                                        bm3 = 2;
                                    } else if (cm == 80) {
                                        am3 = 3;
                                        bm3 = 1;
                                    } else if (cm == 81) {
                                        am3 = 2;
                                        bm3 = 1;
                                    } else if (cm == 82) {
                                        am3 = 2;
                                        bm3 = 2;
                                    } else if (cm == 83) {
                                        am3 = 2;
                                        bm3 = 3;
                                    } else if (cm == 84) {
                                        am3 = 2;
                                        bm3 = 4;
                                    } else if (cm == 85) {
                                        am3 = 2;
                                        bm3 = 5;
                                    } else if (cm == 86) {
                                        am3 = 2;
                                        bm3 = 6;
                                    } else if (cm == 87) {
                                        am3 = 2;
                                        bm3 = 7;
                                    } else if (cm == 88) {
                                        am3 = 2;
                                        bm3 = 8;
                                    } else if (cm == 89) {
                                        am3 = 2;
                                        bm3 = 9;
                                    } else if (cm == 90) {
                                        am3 = 2;
                                        bm3 = 10;
                                    } else if (cm == 91) {
                                        am3 = 1;
                                        bm3 = 10;
                                    } else if (cm == 92) {
                                        am3 = 1;
                                        bm3 = 9;
                                    } else if (cm == 93) {
                                        am3 = 1;
                                        bm3 = 8;
                                    } else if (cm == 94) {
                                        am3 = 1;
                                        bm3 = 7;
                                    } else if (cm == 95) {
                                        am3 = 1;
                                        bm3 = 6;
                                    } else if (cm == 96) {
                                        am3 = 1;
                                        bm3 = 5;
                                    } else if (cm == 97) {
                                        am3 = 1;
                                        bm3 = 4;
                                    } else if (cm == 98) {
                                        am3 = 1;
                                        bm3 = 3;
                                    } else if (cm == 99) {
                                        am3 = 1;
                                        bm3 = 2;
                                    } else if (cm == 100) {
                                        am3 = 1;
                                        bm3 = 1;
                                    }
                                }
                            }

                            
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            

                            String colo = null;
                            String colo1 = null;
                            String colo2 = null;
                            String colo3 = null;
                            colo = colors.get(0);
                            if (colors.get(1) != null) {
                                colo1 = colors.get(1);
                            }
                            if (colors.get(2) != null) {
                                colo2 = colors.get(2);
                            }
                            if (colors.get(3) != null) {
                                colo3 = colors.get(3);
                            }
                            for (int i = 1; i < 11; i++) {
                                out.println("<tr>");
                                for (int j = 1; j < 11; j++) {
                                    if (i == am && j == bm) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo + ".gif");
                                        out.println("</td>");
                                    } else if (i == am1 && j == bm1) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo1 + ".gif");
                                        out.println("</td>");
                                    } else if (i == am2 && j == bm2 && colo2 != null) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo2 + ".gif");
                                        out.println("</td>");
                                    } else if (i == am3 && j == bm3 && colo3 != null) {
                                        out.println("<td width=10% height=10% >");
                                        out.println("<img src=Photos/" + colo3 + ".gif");
                                        out.println("</td>");
                                    } else {
                                        out.println("<td width=10% height=10% >");

                                        out.println("</td>");
                                    }
                                }
                                out.println("</tr>");
                            }



                        }


                    }
                    con.close();
                %>
            </table>
            <br>
            <table class="tb">
                <tr>
                    <th width="20%">Username</th>
                    <th width="20%">Score</th>
                    <th width="20%">Dice Color</th>
                    <%@page import="java.sql.*;" %>

                    <%
                    
                        String b = request.getParameter("jbname");
                        String flag = request.getParameter("flag");
                        String p = request.getParameter("jpname");
                        
                        out.println("<input type='hidden' name='bname' value='" + b + "'>");
                        out.println("<input type='hidden' name='pname' value='" + p + "'>");
                        

                        try {


                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");
                            Statement st11 = con11.createStatement();
                            ResultSet rs11 = st11.executeQuery("select  max_players,count from game_details where game_name='" + b + "'");
                            int max = 0, count = 0;

                            while (rs11.next()) {
                               
                                max = rs11.getInt(1);
                                count=rs11.getInt(2);
                                
                            }
                                
                            if (count != max) {
                                out.println("<p style='position: absolute;top: 300px; color: red;'>The game has not started yet</p>");

                            }
                                else if (max == 3) {

                                String board = request.getParameter("jbname");
                                String player = request.getParameter("jpname");
                                String vv = request.getParameter("dice");
                                String sp = request.getParameter("update");
                                int v = 0;
                                if (vv != null) {
                                    v = Integer.parseInt(vv);
                                }
                                ResultSet rg = st11.executeQuery("select orders from players_details where player_name='" + player + "' and game_name='" + board + "'");
                                int f = 0;
                                while (rg.next()) {
                                    f = rg.getInt(1);

                                }
                                if (f == 1 & sp == null) {
                                    //               out.println("<img src='Photos/d1.gif' name='mydice'>");


                                    out.println("<input type='submit' value='Throw dice!' >");
                                } else {
                                    if (sp != null) {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("you get an extra chance");
                                        out.println("<input type='submit' value='Throw dice!' >");

                                    } else {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("Your chance has over");

                                    }
                                }
                            } else if (max == 2) {
                                String board = request.getParameter("jbname");
                                String player = request.getParameter("jpname");
                                String sp = request.getParameter("update");
                                String vv = request.getParameter("dice");
                                int v = 0;
                                if (vv != null) {
                                    v = Integer.parseInt(vv);
                                }
                                ResultSet rg = st11.executeQuery("select orders from players_details where player_name='" + player + "' and game_name='" + board + "'");
                                int f = 0;
                                while (rg.next()) {
                                    f = rg.getInt(1);

                                }
                                if (f == 1 && sp == null) {
                                    //               out.println("<img src='Photos/d1.gif' name='mydice'>");

                                    out.println("<input type='submit' value='Throw dice!' >");
                                } else {
                                    if (sp != null) {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("you get an extra chance");
                                        out.println("<input type='submit' value='Throw dice!' >");
                                    } else {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("Your chance has over");
                                    }

                                }
                            } else if (max == 4) {
                                String board = request.getParameter("jbname");
                                String player = request.getParameter("jpname");
                                String vv = request.getParameter("dice");
                                String sp = request.getParameter("update");
                                int v = 0;
                                if (vv != null) {
                                    v = Integer.parseInt(vv);
                                }
                                ResultSet rg = st11.executeQuery("select orders from players_details where player_name='" + player + "' and game_name='" + board + "'");
                                int f = 0;
                                while (rg.next()) {
                                    f = rg.getInt(1);

                                }
                                if (f == 1 && sp == null) {
                                    out.println("<input type='submit' value='Throw dice!' >");
                                } else {
                                    if (sp != null) {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("you get an extra chance");
                                        out.println("<input type='submit' value='Throw dice!' >");

                                    } else {
                                        if (v == 1) {
                                            out.println("<img src='Photos/d1.gif' name='mydice'>");
                                        }
                                        if (v == 2) {
                                            out.println("<img src='Photos/d2.gif' name='mydice'>");
                                        }
                                        if (v == 3) {
                                            out.println("<img src='Photos/d3.gif' name='mydice'>");
                                        }
                                        if (v == 4) {
                                            out.println("<img src='Photos/d4.gif' name='mydice'>");
                                        }
                                        if (v == 5) {
                                            out.println("<img src='Photos/d5.gif' name='mydice'>");
                                        }
                                        if (v == 6) {
                                            out.println("<img src='Photos/d6.gif' name='mydice'>");
                                        }
                                        out.println("Your chance has over");
                                    }
                                }
                            }
                            con11.close();

                        } catch (ClassNotFoundException e) {
                            out.println("Couldn't load database driver: "
                                    + e.getMessage());
                        } catch (SQLException e) {
                            out.println("SQLException caught: "
                                    + e.getMessage());
                        } catch (Exception e) {
                            out.println(e);

                        }



                    %>

                </tr>
                <%
                    try {
                        //String b=request.getParameter("jbname");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con111 = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");
                        Statement st1 = con111.createStatement();
                        ResultSet rs1 = st1.executeQuery("select  player_name,current_position,player_color from players_details where game_name='" + b + "'");
                        while (rs1.next()) {
                            out.println("<tr>");

                            out.println("<td>" + rs1.getString(1) + "</td>");
                            out.println("<td>" + rs1.getString(2) + "</td>");
                            out.println("<td>" + rs1.getString(3) + "</td>");

                            out.println("</tr>");

                        }
                        out.println("</table>");
                        con111.close();
            
                    } catch (ClassNotFoundException e) {
                        out.println("Couldn't load database driver: "
                                + e.getMessage());
                    } catch (SQLException e) {
                        out.println("SQLException caught: "
                                + e.getMessage());
                    } catch (Exception e) {
                        out.println(e);

                    }

                %>


            </table>
            <br>
        </form>
        <div id="area"> 
    </body>
</html>