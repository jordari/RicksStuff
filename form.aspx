<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="RicksStuff.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>form results</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</head>
    
<body>
    <form id="form1" runat="server">

        <ul class="w3-navbar w3-light-grey">
        <li><a href="Home.html">Home</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="register.html">Questions</a></li>
        <!--<li><a href="form.aspx">Form</a></li>-->
        <li><a href="About.html">About</a></li>

        </ul>
        <p></p>
        <div>
            <%

                NameValueCollection nvclc = Request.Form;

                string firstName = nvclc["firstName"];
                string lastName = nvclc["lastName"];
                string email = nvclc["email"];
                string questions = nvclc["questions"];

                Response.Write("<table width=100 border=1>");
                Response.Write("<tr class='w3-red'>");
                Response.Write("<th>");
                Response.Write(firstName);
                //Response.Write("<br>");
                Response.Write("<th>");
                Response.Write(lastName);
                //Response.Write("<br>");
                Response.Write("<th>");
                Response.Write(email);
                //Response.Write("<br>");
                Response.Write("<th>");
                Response.Write(questions);
                Response.Write("<br>");

            %>
        </div>
    </form>
</body>
</html>
