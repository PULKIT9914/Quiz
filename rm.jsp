<%@ page import ="java.sql.*"   %>
<h1>Answers:</h1>
<%
String a[]=new String[5];
a[0]=request.getParameter("e1");
a[1]=request.getParameter("e2");

a[2]=request.getParameter("e3");

a[3]=request.getParameter("e4");

a[4]=request.getParameter("easy");





String s1="",s2="",s3="",s4="",s5="";
int i=0,c=0;
	ResultSet rs;
	try{
		Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/quiz";
            Connection conn = DriverManager.getConnection(url,"root","");
			Statement stmt = conn.createStatement();

            
			rs=stmt.executeQuery( "Select * From `rm` ");

		 while ( rs.next() ) 
					{ 
							s1= rs.getString("answer");
							if(s1.equals(a[i]))
						{
								c++;
						}
							i++;
							%>
							
							<%=i%>: <%=s1%><br>
							<%

					}
		}
catch(Exception e)
{
	out.print(e);
}
%>
<h1>Result</h1>
<%
	if(c==5)
	out.print("very Strong(5)");
	else if(c==4)
	out.print("Strong(4)");
	else if(c==3)
    out.print("Good(3)");
	else if(c==2)
    out.print("Bad(2)");
    else if(c==1)
    out.print("Poor(1)");
    else
	out.print("0");

%>