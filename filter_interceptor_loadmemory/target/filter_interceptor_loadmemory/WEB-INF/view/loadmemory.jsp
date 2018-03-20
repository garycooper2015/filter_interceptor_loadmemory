<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title></title>

    <!-- Bootstrap -->
    <link href="<%=path%>/assets/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- 自定义css -->
    <link href="<%=path%>/assets/css/css1.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<div class="container">
  		<div class="row">
  			<div class="col-md-4 col-md-offset-4">
  				<div style="margin-top:50px;"></div>
  				<ul class="nav nav-pills">
  					<li role="presentation" class="active"><a href="<%=path%>">返回首页</a></li>
  				</ul>
  				
  				<ul class="list-unstyled">
					
					<li><h3>加载从内存中取出的数据</h3></li>
					
				    <c:forEach items="${map2}" var="i">
				    		<li>key = ${i.key}  value = ${i.value}</li>
				    </c:forEach>
	    
  				</ul>
  				
  
  				
  			</div>
  			
  		</div>
  	</div>
  	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=path%>/assets/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=path%>/assets/js/bootstrap.min.js"></script>
  </body>
</html>