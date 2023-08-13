<%@ page import="java.sql.*, java.io.*" %>
 <html>
 <title>Data From Database</title>
 <head>Retrieve data from Datebase</head>
 <body>
 <%! 
 Connection con = null;
 Statement st = null;
 public void jspInit() 
 {
 try 
 {
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Hanuman", "scott", 
"tiger");
 st = con.createStatement();
 } 
 catch (Exception e) 
 {
 out.println(e);
 }
 }
 %>
 <%! 
 try
 {
 ResultSet rs = st.executeQuery("select * from employee");
 while (rs.next()) 
 {
 out.println("<h3>" + rs.getString(1) + " " + rs.getString(2) + "</h3>")
 }
 }
 catch (Exception e)
 {
 out.println(e);
 }
 %>
 </body>
 </html>