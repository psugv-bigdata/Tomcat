<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head xml:lang="en-us" lang="en-us">
  <title>Penn State Great Valley: FThe Big Das Lab</title>
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  <link rel="stylesheet" type="text/css" href="css/30931.css">
  <link rel="stylesheet" type="text/css" href="css/global_style.css">
</head>
<body onload="body_load();" onunload="body_unload();">

  <div class="hidden">
    <a href="#skiptarget" title="Jump to page content">Skip navigation</a>
  </div>
  <div id="main">
    <div id="banner">
      <a href="http://www.psu.edu/">
        <img src="images/psuShield.png" alt="Penn State Worthington Scranton" id="mark" name="mark">
      </a>
      <a href="http://sgps.psu.edu/default.htm">
        <img src="images/psugv.png" alt="Penn State Worthington Scranton" id="mast" name="mast">
      </a>
    </div>

    <div id="ib">
      <a href="http://sgps.psu.edu/default.htm" style="float: left; margin-left: 13px;">Home</a>
      <a href="http://sgps.psu.edu/aspnet/directory.aspx">Campus Directory</a>
      <span>|</span>
      <a href="http://sgps.psu.edu/Information/azindex.htm">A-Z Index</a>
    </div>

    <div id="container">
<!--- Start center text here -->
      <div id="header">
        <h1>The Big Data Lab</h1>
      </div>


      <div id="content" class="narrow">
        <div id="center">
          <h3>Test Trend</h3>
<p><img src="images/testtrend.png" height="330"></p>
          <p>&nbsp;</p>

        </div>
      </div>

<!--- End center panel text here -->



<div id="rgtside">
  <div align="left">
<!--- Start right panel text here -->

          <h4>Server Status<br/><br/></h4>

<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.* " %>
<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%
try
{
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://192.168.100.14:4112/sonar";
	String username = "sonar";
	String password = "sonar";
	String myDataField = null;
	Connection myConnection = null;
	Class.forName("org.postgresql.Driver");
	myConnection = DriverManager.getConnection(url,username,password);
	//Postgres is running
	out.println("<p><img src='images/green.png' height=12> PostgreSQL</p>");
	
	//Check status for sonarqube
	Socket socket = new Socket(); 
    socket.connect(new InetSocketAddress("192.168.100.15", 4321), 5000);
    out.println("<p><img src='images/green.png' height=12> SonarQube</p>");
}

//IOException is thrown by socket.connect()
catch (IOException e) {
     // Either timeout or unreachable or failed DNS lookup.
	 out.println("<p><img src='images/red.png' height=12> SonarQube</p>");
}
catch(Exception ex)
{
	out.println("<p><img src='images/red.png' height=12> PostgreSQL</p>");          
}
%>
  
	<!-- <p><img src="images/green.png" height=12> <a href="www.google.com">PostgreSQL</a></p>
          <p><img src="images/orange.png" height=12> <a href="www.google.com">SonarQube</a></p>
          <p><img src="images/red.png" height=12> <a href="www.google.com">MongoDB</a></p>
          <p><img src="images/green.png" height=12> <a href="www.google.com">Other</a></p> -->
<!--- End right panel text here -->
  </div>
</div>
<div id="lftside">
<ul>
<li class="minus"><a href="javascript://" onclick="cc_click(this);return false;" class="cathdr">Faculty &amp; Staff</a>
<ul>
<li><a href="http://sgps.psu.edu/FacultyStaff/32108.htm">Faculty Directory-Alphabetical</a></li>
<li><a href="http://sgps.psu.edu/FacultyStaff/32110.htm">Faculty Directory-by Division</a></li>
<li><a href="http://psu.jobs/">Employment Opportunities</a></li>
</ul>
</li>
</ul>
<ul>
<li class="minus"><a href="javascript://" onclick="cc_click(this);return false;" class="cathdr">Faculty Research</a>
<ul>
<li><a href="http://sgps.psu.edu/FacultyStaff/32125.htm">Awards &amp; Grants</a></li>
<li><a href="http://sgps.psu.edu/FacultyStaff/32127.htm">Books</a></li>
<li><a href="http://sgps.psu.edu/FacultyStaff/32130.htm">Conference Presentations</a></li>
<li><a href="http://sgps.psu.edu/FacultyStaff/32132.htm">Editorships &amp; Editorial Boards</a></li>
<li><a href="http://sgps.psu.edu/FacultyStaff/32134.htm">Scholarly Articles</a></li>
</ul>
</li>
</ul>
</div>

<br style="clear:both;"></div>
</div>
<div id="foot">
<div class="ltgray1"></div>
<p>Penn State Great Valley <span class="lnksep">|</span> 30 East Swedesford Road, Malvern, PA 19355 <span class="lnksep">|</span> 610-648-3200
<br>
© 2016 <a href="http://www.psu.edu/">The Pennsylvania State University</a> <span class="lnksep">|</span> <a href="http://www.psu.edu/ur/legal.html">Privacy and Legal Statements</a> <span class="lnksep">|</span> <a href="http://sgps.psu.edu/hotlines.htm" title="Phone numbers for emegency services, community resources and ethics hotlines">Hotlines</a></p>
</div>
</div>


</body></html>
