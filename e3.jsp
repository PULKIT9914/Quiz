<%@ page import ="java.sql.*"   %>

<% 
String a1=request.getParameter("e1");
String a2=request.getParameter("e2");
String a3=request.getParameter("easy");
%>

<%

String s1="aaa",s2="",s3="",s4="",s5="";
	ResultSet rs;
	try{
		Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/quiz";
            Connection conn = DriverManager.getConnection(url,"root","");
			Statement stmt = conn.createStatement();

            
			rs=stmt.executeQuery( "Select * From `easy` where id='e4' ");

		 while ( rs.next() ) 
					{ 
							s1= rs.getString("ques");
							s2= rs.getString("op1");
							s3= rs.getString("op2");
							s4= rs.getString("op3");
							s5= rs.getString("op4");
							out.print(s1);
					}


}
catch(Exception e)
{
	out.print("nam");
}
					
					%>
					<form action="e4.jsp">
					<input type=hidden name=e1 value="<%=a1%>">

<input type=hidden name=e2 value="<%=a2%>">

<input type=hidden name=e3 value="<%=a3%>">

				 <input type=radio name=easy value=<%=s2%>>	<%=s2%><br>
 <input type=radio name=easy value=<%=s3%>> <%=s3%><br>
 <input type=radio name=easy value=<%=s4%>> <%=s4%><br>
 <input type=radio name=easy value=<%=s5%>> <%=s5%><br>

					<input type=submit value=next>
					</form>
					 
           