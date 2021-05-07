<%@page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>동아줄 : 로그인</title>
    <link rel="stylesheet" href="/resources/css/signIn.css">
</head>

<script>
		
    var msg = '${msg}';
    if (msg.length > 0) {
        alert(msg);
    }

$( document ).ready( function() {
    $("#email").focus( function() {
      $( "#bar1" ).css( "border", "1px solid rgb(9, 204, 9)" );
      $( "#bar1" ).css( "backgroundcolor", "rgb(9, 204, 9)" );
    } );
    
    $("#email").blur( function() {
        $( "#bar1" ).css( "border", "0.1px solid rgb(150, 150, 150)" );
        $( "#bar1" ).css( "background-color", "rgb(150, 150, 150)" );
    } );
    
    $("#passwd").focus( function() {
        $( "#bar2" ).css( "border", "1px solid rgb(9, 204, 9)" );
        $( "#bar2" ).css( "backgroundcolor", "rgb(9, 204, 9)" );
    } );
    
    $("#passwd").blur( function() {
        $( "#bar2" ).css( "border", "0.1px solid rgb(150, 150, 150)" );
        $( "#bar2" ).css( "background-color", "rgb(150, 150, 150)" );
    } );
  } );
    

    
</script>

<body>
    <div class="wrap">
        <div class="login">
            <h2 id="title">Dongazul</h2>
            <div id="outter">
                <form action="/login/signInPost" method="POST">
                    <c:if test="${number == null}">
                        <div class="login_id">
                            <input type="text" id="email" name="email" placeholder="Email"><br>
                        </div>
                        <hr id="bar1">

                        <div class="login_pw">
                            <input type="password" id="passwd" name="passwd" placeholder="Password"><br>
                        </div>
                        <hr id="bar2">

                        <div class="login_etc">
                            <label for="rememberme">rememberMe</label>
                            <input type="checkbox" name="rememberme"><br>
                        </div>

                        <div class="submit">
                            <input type="submit" value="Sign-In">
                        </div>
                    </c:if>

                </form>
                <div class="submit">
                    <form action="/member/signUp" method="GET">
                        <input type="submit" value="Sign-Up" />
                    </form>
                </div>
                <div class="submit">
                    <form action="/login/findId" method="get">
                        <input type="submit" value="forget email?">
                    </form>
                </div>
                <div class="submit">
                    <form action="/login/findPw" method="get">
                        <input type="submit" value="forgot password?">
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">

	$(document).ready(function () {
    var msg = '${msg}';
    if (msg.length > 0) {
        alert(msg);
    }
    
    })
    
</script>
</body>

</html>