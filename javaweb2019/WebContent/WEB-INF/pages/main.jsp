<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>首页</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap-3.3.7-dist/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/1.css">
    <script src="js/1.js"></script>
    <link rel="stylesheet" href="css/user.css">
    <link rel="shortcut  icon" href="image/favicon.ico" type="image/x-icon" />
</head>
<body>
	
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid container">
        <div id="nav" class="navbar-header" style="height: 70px;">
            <img src="image/my_logo.jpg" style="padding: 12px;height: 100%" >
        </div>
        <div>
            <ul class="nav navbar-nav ">
				
                <li class="active" id="crftag"><a href="main">首页</a></li>
            </ul>
        </div>
		<div>
            <ul class="nav navbar-nav navbar-right">
				
                <li id="crftag"><a href="gotoHomepage">快速登录/注册</a></li>
				<li id="crftag"><a href="gotoUserCenter">个人中心</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="left col-md-9 ads">
        <div id="myCarousel" class="carousel slide ">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="image/my4.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="image/my2.jpg" alt="Second slide">
                </div>
				<div class="item">
                    <img src="image/my3.jpg" alt="Second slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
                <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
		
		<hr class="featurette-divider">
		
		<div class="row">
        <div class="col-lg-4 content">
          <img class="img-circle" src="image/mail_send.png" width="140" height="140">
			<p><a class="btn btn-default content-button" href="gotoSender" role="button"> 我要寄件 &raquo;</a></p>
		  <hr class="featurette-divider">
			<hr class="featurette-divider">
			
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4 content">
          <img class="img-circle" src="image/mail_receive.png" alt="Generic placeholder image" width="140" height="140" >
			<p><a class="btn btn-default content-button"  href="gotoReceiver" role="button"> 我要接件 &raquo;</a></p>
			<hr class="featurette-divider">
          <hr class="featurette-divider">
			
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4 content">
          <img class="img-circle" src="image/find.png" alt="Generic placeholder image" width="140" height="140">
          <p><a class="btn btn-default content-button" onclick='#search' data-toggle='modal' data-target='#search' role="button"> 订单查询 &raquo;</a></p>
			<hr class="featurette-divider">
			<hr class="featurette-divider">
        </div><!-- /.col-lg-4 -->
      </div>		
      <hr class="featurette-divider">
      <hr class="featurette-divider">
      <hr class="featurette-divider">
	<!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">回到顶部</a></p>
        <p>&copy; 2019 Undefined24, Org. &middot; <a href="#">版权</a> &middot; <a href="#">条款</a></p>
	</footer>
</div>
<!-- 模态框（Modal） -->
    <div class="modal fade" id="search" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">订单查询</h4>
                </div>
                <div class="modal-body">
					<form class="form-horizontal col-md-10 col-md-offset-1" role="form" action="search" method="post">
						<div class="form-group col-md-12">
							<label class="control-label col-md-4" for="order_num">订单号</label>
							<div class="col-md-8">
								<input class="form-control" id="order_num" name="search_str" value="" >
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary" onClick="My_Order_Sub()">查询</button>
						</div>
					</form>
<!--					<div></div> 显示查询结果-->
					<div class="modal-footer"></div>
				</div>
			</div>
		</div><!-- /.modal-content -->
</div><!-- /.modal -->
<%--搜索订单时提示--%>
    <%String search_msg=(String)request.getAttribute("search-msg");
        if(search_msg!=null&&search_msg!="1"&&search_msg!="2"){%>
	<script type="text/javascript">
        alert("<%=search_msg%>");
    </script>
     <%}%>
     <% if(search_msg=="2"){ %>
     <script type="text/javascript">
           window.location.href="gotoUserCenter#my_give_bill"; 
    </script>
    <%}%>
    <% if(search_msg=="1"){ %>
     <script type="text/javascript">
           window.location.href="gotoUserCenter#my_accept_bill"; 
    </script>
    <%}%>
</body>
</html>