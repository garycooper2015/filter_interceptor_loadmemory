<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	<meta name="keywords" content="SpringMVC,过滤器,拦截器,加载到内存,Filter,HandlerInterceptor,ApplicationContextAware,java">
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
  			<div class="col-md-8">
  				<div style="margin-top:50px;"></div>
  				<ul class="list-unstyled">
  					<li><h2>示例一 拦截器 HandlerInterceptor</h2></li>
  					
  					<li>示例中当访问路径
						<a href="http://www.itluosiding.com/filter_interceptor_loadmemory/time/timeindex">
							http://www.itluosiding.com/filter_interceptor_loadmemory/time/timeindex</a>
  					</li>
  					<li>
  						拦截器对路径下/time/*进行拦截，如果时间在上午11点到下午15点之间，可以顺利访问上面的路径，
  					</li>
  					<li>
  						否则跳转到http://www.itluosiding.com/filter_interceptor_loadmemory/noflowthrow页面
  					</li>
					<li>
					访问非/time/路径下的链接，比如
					<a href="http://www.itluosiding.com/filter_interceptor_loadmemory/noflowthrow">http://www.itluosiding.com/filter_interceptor_loadmemory/noflowthrow</a>
					将不会受拦截器的任何影响
					</li>	
  				</ul>
  				
  				<ul class="list-unstyled">
  					<li><h2>示例二 过滤器 Filter</h2></li>
  					<li>
  						示例中当访问路径
					<a href="http://www.itluosiding.com/filter_interceptor_loadmemory/manager/flowthrow">
						http://www.itluosiding.com/filter_interceptor_loadmemory/manager/flowthrow</a>
  					</li>
					<li>
						过滤器对路径下/manager/*进行拦截，后台会打印出流经拦截器中方法doFilter的信息
					</li>
					<li>
						访问非/manager/路径下的链接，比如
						<a href="http://www.itluosiding.com/filter_interceptor_loadmemory/noflowthrow">http://www.itluosiding.com/filter_interceptor_loadmemory/noflowthrow</a>
						将不会受过滤器的任何影响
					</li>
  				</ul>


  				<ul class="list-unstyled">
  					<li><h2>示例三 加载内存数据 @PostConstruct</h2></li>
  					<li>应用启动时，会把测试数据加载到内存中</li>
  					<li>
  						当访问
					<a href="http://www.itluosiding.com/filter_interceptor_loadmemory/loadmemory">
						http://www.itluosiding.com/filter_interceptor_loadmemory/loadmemory</a>
						时，页面会显示从内存中加载的数据
  					</li>
  				</ul>
  				
  			</div>
  			<div class="col-md-4"></div>
  		</div>
  	</div>
  	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=path%>/assets/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=path%>/assets/js/bootstrap.min.js"></script>
  </body>
</html>