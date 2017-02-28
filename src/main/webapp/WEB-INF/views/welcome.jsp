<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="testApp">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Hello world page</title>
		
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap/bootstrap.min.css" />
	</head>
	<body class="list-group" ng-controller="TestController as testCon">
		<header>
			<h1 class="text-center">FJSNorman Games</h1>
			<h2 class="text-center">- Angular test store -</h2>
		</header>
		<h3>Serverside message: ${greeting}</h3>
		
		<div class="list-group-item" ng-repeat="product in testCon.products">
			<h3>
				{{product.name}}
			  	<em class="pull-right">{{product.price | currency}}</em>
			</h3>
			
			<section ng-show="product.images.length" ng-controller="GalleryController as gallery"> 
				<img ng-src="{{product.images[gallery.current]}}" />
				<ul class="list-inline thumbs">
					<li class="thumbnail" ng-repeat="image in product.images">
						<img ng-src="{{image}}"/>
					</li>
				</ul>
			</section>
			
			<section class="tab" ng-controller="TabController as tab">
				<ul class="nav nav-pills">
					<li ng-class="{active:tab.isSet(1)}">
						<a ng-click="tab.setTab(1)"href>Description</a>
					</li>
					<li ng-class="{active:tab.isSet(2)}">
						<a ng-click="tab.setTab(2)" href>Specs</a>
					</li>
					<li ng-class="{active:tab.isSet(3)}">
						<a ng-click="tab.setTab(3)" href>Reviews</a>
					</li>
				</ul>
				
				<div ng-show="tab.isSet(1)">
		        	<h4>Description</h4>
		          	<blockquote>{{product.description}}</blockquote>
		        </div>
		        <div ng-show="tab.isSet(2)">
		          	<h4>Specs</h4>
		          	<blockquote>Shine: </blockquote>
		        </div>
		        <div ng-show="tab.isSet(3)">
		          	<h4>Reviews</h4>
		          	<blockquote></blockquote>
		        </div>        
			</section>			
		</div>		

		<script src="<c:url value='/static/js/3rdParty/angular.min.js' />"></script>
		<script src="<c:url value='/static/js/testModule/test.js' />"></script>
	</body>
</html>