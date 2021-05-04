<!DOCTYPE html>
<html> 

<head>
<meta charset="UTF-8">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>signIn.jsp</title>
<link rel="stylesheet" href="/resources/css/signIn.css">
</head>
<script>
		
		var msg = '${msg}';
        if (msg.length > 0) {
            alert(msg);
        }

    $( document ).ready( function() {
        $("#email").focus( function() {
          $( "#bar1" ).css( "border", "1.2px solid rgb(9, 204, 9)" );
          $( "#bar1" ).css( "backgroundcolor", "rgb(9, 204, 9)" );
        } );
        
        $("#email").blur( function() {
            $( "#bar1" ).css( "border", "0.1px solid rgb(150, 150, 150)" );
            $( "#bar1" ).css( "background-color", "rgb(150, 150, 150)" );
        } );
        
        $("#passwd").focus( function() {
            $( "#bar2" ).css( "border", "1.2px solid rgb(9, 204, 9)" );
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
        <div class="between1"></div>
        <form action="/login/signIn" method="POST">
            <c:if test="${number == null}">
            <div class="login_id">
                <input type="text" id="email" name="email" placeholder="Email" ><br>
                <hr id="bar1">
            </div>
            <div class="login_pw">
                <input type="password" id="passwd" name="passwd" placeholder="Password"><br>
                <hr id="bar2">
            </div>
            <br>
            <div class="login_etc">
                <label for="rememberMe">rememberMe</label>
                <input type="checkbox" name="remember-me"><br>
            </div>

            <div class="between2"></div>

            <div class="submit" class="between"> 
                <input type="submit" value="Sign-In" >
            </div> 
        </c:if>
    
    
    </form>
        <div class="submit"> 
            <form action="/member/signUp" method="GET">
                <input type="submit" value="Sign-Up"/>
            </form>
        </div>
        <div class="submit"> 
            <form action="/login/findId" method="GET">
                <input type="submit" value="forgot email?">
            </form>
        </div>
        <div class="submit"> 
            <form action="/login/findPw" method="GET">
                <input type="submit" value="forgot password?">
            </form>
        </div>

        </div>

        </div>

    </div>
</body>

</html>