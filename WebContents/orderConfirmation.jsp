<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String cartId = session.getId();
    
    String shipping_cartId=""; 
    String shipping_name=""; 
    String shipping_shippingDate=""; 
    String shipping_country=""; 
    String shipping_zipCode=""; 
    String shipping_roadAddress=""; 
    String shipping_jibunAddress=""; 
    String shipping_detailAddress="";
    
    //쿠키정보 얻기
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
    	for(int i=0;i<cookies.length;i++){
    		Cookie thisCookie = cookies[i];
    		String n=thisCookie.getName();
    		if(n.equals("Shipping_cartId"))
    			shipping_cartId = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_name"))
    			shipping_name = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_shippingDate"))
    			shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_country"))
    			shipping_country = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_zipCode"))
    			shipping_zipCode = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_roadAddress"))
    			shipping_roadAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_jibunAddress"))
    			shipping_jibunAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_detailAddress"))
    			shipping_detailAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8"); 
    	}
    }
%>
<%-- <%=shipping_cartId%><br> 
<%=shipping_name%><br>
<%=shipping_shippingDate%><br> 
<%=shipping_country%><br>
<%=shipping_zipCode%><br> 
<%=shipping_roadAddress%><br> 
<%=shipping_jibunAddress%><br> 
<%=shipping_detailAddress%><br> 
<%=shipping_extraAddress%><br> --%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>주문정보</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container mt-5">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10">
  <h2 id="company"><b>주문 정보</b></h2>
  <hr>
<pre>

</pre>
<div class="container col-8 alert alert-secondary" >
    <div class="text-center">
         <h1>영수증</h1>
    </div>
    <div class="row justify-content-between">
            <div class="col-4" align="left">
               <strong>배송주소</strong><br>이름: <%=shipping_name%><br>
               우편번호: <%=shipping_zipCode %><br>
               주소: <%=shipping_roadAddress %> <%=shipping_detailAddress %><br>
            </div>
            <div class="col-4" align="right">
                <p><em>예상 배송일: </em><%=shipping_shippingDate %></p>
            </div>
    </div>
    <div>
      <table class="table table-hover">
        <tr>
         <th class="text-center">상품</th>
         <th class="text-center">갯수</th>
         <th class="text-center">가격</th>
         <th class="text-center">총합</th>
        </tr>
        <%
        	int sum=0;
        ArrayList<Product> cartList =(ArrayList<Product>)session.getAttribute("cartlist");
        if(cartList==null) cartList= new ArrayList<Product>();
        for(int i=0;i<cartList.size();i++){
        	Product product = cartList.get(i);
        	int total = product.getUnitPrice() * product.getQuantity();
        	sum+=total;
        %>
        <tr>
        <td class="text-center"><em><%=product.getPname() %></em></td>
        <td class="text-center"><%=product.getQuantity() %></td>
        <td class="text-center"><%=product.getUnitPrice() %></td>
        <td class="text-center"><%=total%>원</td>
        </tr>
        <%
        }
        %>
        <tr>
         <td></td>
         <td></td>
         <td class="text-right"><strong>총액: </strong></td>
         <td class="text-center text-danger"><strong><%=sum%>원</strong></td>
        </tr> 
      </table>
        
      <a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>" 
                 class="btn btn-secondary" role="button">이전</a>  
      <a href="./thanksCustomer.jsp" class="btn btn-success" role="button">주문완료</a>
      <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a> 
    </div>    
</div>
<pre>

</pre> 
<jsp:include page="footer.jsp"/>
</body>
</html>