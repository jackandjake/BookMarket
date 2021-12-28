<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<title>Login</title>
</head>
<body>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="/me.jsp"/>
<hr>
<br>
  <div class="container" align="center">
     <div class="col-md-4 col-md-offset-4">
          <h3 class="form-signin-heading">로그인 하세요</h3>
          <%
          	 String error = request.getParameter("error");
              if(error!=null){
            	  out.print("<div class='alert alert-danger'>");
            	  out.print("아이디와 비밀번호를 확인해 주세요");
            	  out.print("</div>");
              }
          %> 
          <form class="form-signin" action="processLoginMember.jsp" method="post">
              <div class="form-group">
                  <label for="inputUserName" class="sr-only">아이디</label>
                  <input type="text" class="form-control" placeholder="아이디" name="id" required autofocus>
              </div>
              <div class="form-group">
                 <label class="sr-only" for="inputPassword">비밀번호</label>
                 <input type="password" class="form-control" placeholder="비밀번호" name="password" required>
              </div>
               <button type="button" class="btn btn-primary" type="submit">로그인</button>
              <button class="btn btn-secondary" type="button" 
                        onclick="location.href='addMember.jsp'">회원가입</button>                      
          </form>
     </div>
     <%@ include file="/fo.jsp" %>
  </div>
</body>
</html>