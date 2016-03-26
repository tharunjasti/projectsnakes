<html>
<head>
<title>Instructions</title>
<link rel="stylesheet" type="text/css" href="style1.css">
<link rel="stylesheet" type="text/css" href="style2.css">
<link rel="stylesheet" type="text/css" href="style3.css">
<style>
img.sr{position:absolute;right:13;top:620;}
th a{text-decoration:none;color:black;}
a:hover{color:red;}
</style>
</head>
<body>
   <%
    try{
        String s=(String)session.getAttribute("uname");
        if(s!=null)
                       {
            out.println("<p style='postion: absolute; right: 0px; color: black'>Welcome "+s+"</p>");
            out.println("<a style='position: absolute; top: 10px; right: 16px; color: black;' href='logout.jsp'>Logout</a>");
                     }
    }
    catch (Exception e)
                       {
        out.println("Error");
    }
   %>
<table align="center" width="100%">
<tr>
<th> <a href="instructions_of_game.jsp">Instructions</a></th>
            <%
try{
        String s=(String)session.getAttribute("uname");
        if(s==null)
          
            out.println("<th> <a href='registration.jsp'>Registration</a></th>");
         
    }
    catch (Exception e)
                       {
        out.println("Error");
    }

%>
            

<th> <a href="newgamejsp.jsp">New Game</a></th>
<th> <a href="joingamejsp.jsp">Join Game</a></th>
<th> <a href="contactus.jsp">Contact Us</a></th>
</tr>
</table>
<p class="p1"><center><font size="6">Instructions of snakes and ladders</font></center></p>
</b><br>

<ul>
    <li> Any number of players may participate in a game of Snakes and Ladders.</li>
      <li>Play takes place on a Snakes and Ladders board where the spaces are numbered from 1 to 100. The structure and layout of the board may or may not correspond to the conventional board, but the numbers will be in a logically coherent arrangement and players will need to discover the exact arrangement for themselves.</li>
      <li>The positions and effects of snakes and ladders will be consistent. For example, all spaces in a particular column might be the feet of ladders, and might move the player by ten spaces each ladder. Similarly, mouths of snakes might be those spaces whose digits add up to eight, and landing on these spaces might send players back fifteen spaces.</li>
                  <p class="p3">(Terms such as 'up', 'down', 'forward', 'back', etc. may or may not be true in a directional sense, but they will be true in a numerical sense.)</li>
	<li>Each player starts off the board at space 0.<br></p>
<li>The winner is the first player to end a turn on or beyond space 100. If more than one player satisfies this condition in the same turn, the player who would have travelled furthest past space 100 will be the winner. Ties for this honour will result in a draw.</li>
<li>Each turn players choose their own die throw (1 to 6) for their move. In the first six turns players must use each number exactly once, similarly in the second six turns, and so on. Players should make sure they keep a record of the die throws they use.</li>
<li>Initial rounds will be for single turns. Later rounds will require orders for two turns to be submitted together.</p>
<li>With each set of orders players may nominate one space as a trapdoor. All spaces which receive three or more nominations become trapdoors for the duration of the round.</li>
<li>If there are eight players or less in the game, two or more votes will be sufficient to activate trapdoors.</p>
<li>In two-turn rounds each player may nominate a single trapdoor number. This trapdoor nomination will apply to both turns in the round.</li>
<li>Any player finishing a turn on a trapdoor will fall through to the number below (assuming there is one). For example, on a conventional ten-column board they would drop from 45 to 36. On a board arranged differently, 45 might be above a different number.</li>
<li>Trapdoors will take precedence over snakes and ladders.</p>
<li>Should a player fall through a trapdoor find themselves at the head of a snake or the base of a ladder, the snake or ladder will have its normal effect.</li>
<li>A player may fall through more than one trapdoor if more than one is encountered in the same turn.</p>
<li>A player will not fall through the same trapdoor more than once in a turn. Should they return to a trapdoor space they have already fallen through, the space will be treated as a normal space.</li>
<li>If a player does not submit a trapdoor nomination, the space that their move takes them to (prior to the use of any ladders, snakes or trapdoors) will be counted as their trapdoor nomination for the round. For two-turn rounds the 'target' space for their first move will be used as the trapdoor nomination for both turns.</li>
<li>In the event of no move received (NMR) from a player, the referee will make the lowest legal move. (Of course, if this takes the player to a ladder it won't look like the lowest legal move.) A trapdoor will be nominated on the basis of this move as per rule </li>
<li>If a player submits the same die throw twice in a set of six turns, the player will be treated as if they had failed to submit orders. However, any trapdoor nomination submitted by the player will stand.</li>
<li>The referee will not reveal the die throws or active trapdoors. Reports will only show the spaces occupied by the players at the end of each round.</li>
</ul>

<a href="main.jsp">
<img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
</body>
