<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <link rel="stylesheet" href="login.css">


</head>

<body>

<h1>   ....WELCOME.....  </h1>
<div class="login">
    <center>
    <h2>Sign In</h2>
    <form method="post" action="">


            <input type="email" placeholder="Email" name="email"/><br>


            <input type="password" placeholder="Password" name="password"/><br>


        <input type="radio" name="cookie" value="no"  checked> <label> no</label>
        <input type="radio" name="cookie" value="http"> <label> Http</label>
        <input type="radio" name="cookie" value="secure"> <label> secure</label>
        <input type="radio" name="cookie" value="both"> <label> both</label><br>
        <input type="submit" value="Log In" name="login"/>
        <div class="pass">
            <b href="#">Forgot Password?</b>
            <br>
            <input id="btn" type="submit" name="Sign Up" value="Sign Up">

            <br/>
        </div>
    </form>
</div>
</center>

</body>
</html>

<%
    if(request.getParameter("login")!=null)
    {

        if(request.getParameter("password")!=""&&request.getParameter("email")!="")
        {
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            if ("chathu@gmail.com".equals(email) && "chathu".equals(pass))
            {
                String radio =request.getParameter("cookie");
                if("no".equals(radio))
                {

                    Cookie cook = new Cookie("_rxuuid", "%7B%22rx_uuid%22%3A%22RX-18ddcfa5-d56d-45e7-8a06-6132c92079c8%22%7D");
                    cook.setMaxAge(60);
                    cook.setDomain("localhost");
                    cook.setPath("/my-web-app-1");
                    response.addCookie(cook);
                    response.sendRedirect("login.jsp");
                }
                else if("secure".equals(radio))
                {

                    Cookie cook = new Cookie("_rxuuid", "%7B%22rx_uuid%22%3A%22RX-18ddcfa5-d56d-45e7-8a06-6132c92079c8%22%7D");
                    cook.setMaxAge(60);
                    cook.setSecure(true);
                    cook.setDomain("localhost");
                    cook.setPath("/my-web-app-1");
                    response.addCookie(cook);
                    response.sendRedirect("login.jsp");
                }
                else if("http".equals(radio))
                {

                    Cookie cook = new Cookie("_rxuuid", "%7B%22rx_uuid%22%3A%22RX-18ddcfa5-d56d-45e7-8a06-6132c92079c8%22%7D");
                    cook.setMaxAge(60);
                    cook.setHttpOnly(true);
                    cook.setDomain("localhost");
                    cook.setPath("/my-web-app-1");
                    response.addCookie(cook);
                    response.sendRedirect("login.jsp");
                }
                else if("both".equals(radio))
                {

                    Cookie cook = new Cookie("_rxuuid", "%7B%22rx_uuid%22%3A%22RX-18ddcfa5-d56d-45e7-8a06-6132c92079c8%22%7D");
                    cook.setMaxAge(60);
                    cook.setSecure(true);
                    cook.setHttpOnly(true);
                    cook.setDomain("localhost");
                    cook.setPath("/my-web-app-1");
                    response.addCookie(cook);
                    response.sendRedirect("login.jsp");
                }
            }
            else
            {
%>
<script>alert("Ivalid Email or password")</script>
<%
    }
}
else
{
%><script>alert("Please enter the email and password")</script><%
        }
    }
    if(request.getParameter("logout")!=null)
    {
        Cookie cook = new Cookie("_rxuuid", "");
        cook.setMaxAge(0);
        cook.setDomain("localhost");
        cook.setPath("/my-web-app-1");
        response.addCookie(cook);
    }
%>
