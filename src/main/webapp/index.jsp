<!-- Directives -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- @ include file="/taglibs.jsp" --%>
<%@ taglib prefix = "ex" uri = "WEB-INF/custom.tld"%>    
	
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>Hello JSP!</title>
  </head>
  
  <body>
    Hello,world!<br /><br />
    
    <%-- JSP declaration --%>
    <b>JSP declaration demo:</b><br />
    <%! int i = 100; %>
    <%! int day = 3; %> 
    <% out.println("i = " + i); %><br />
    
    <br />
    <%-- JSP scriptlets --%>
    <b>JSP scriptlet demos:</b><br />
    <% out.println("Your IP address is " + request.getRemoteAddr()); %><br />
    <% out.println("path = " + path); %><br />
    <% out.println("basePath = " + basePath); %><br />
    
    <br />
    <%-- An JSP expression which cannot be ended with a semicolon --%>
    <b>JSP expression demos:</b>
    <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
    
    <!-- if ... else -->
    <% if (day == 1 || day == 7) { %>
      <p> Today is weekend</p>
    <% } else { %>
      <p> Today is not weekend</p>
    <% } %>
    
    <!-- Custom taglib demo -->
    <b>Custom taglib demo:</b> (See <a href="https://www.tutorialspoint.com/jsp/jsp_custom_tags.htm">Custom taglib</a>)<br />
    <ex:Hello/>
  </body>
</html>
