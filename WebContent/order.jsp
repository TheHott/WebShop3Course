<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="classes.Product"%>
<%@page import="classes.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Заказ</title>
</head>
<body>
<div>
<h1>Интернет-магазин компьютерной техники - Заказ</h1>
<table>
	<tr>
		<td><a href="index.jsp">Домой</a></td>
		<td><a href="GetCatalog">Каталог</a></td>
		<td><a href="cart.jsp">Корзина</a></td>
		<td><a href="myProfile.jsp">Профиль</a></td>
		<td>Добро пожаловать, <b>${user.login }</b></td>
		<td><a href="SignOutUser">Выйти</a></td>
		<td><form action="search" method="get" autocomplete="off">
		<input type="search" name="req" placeholder="Найти товар" required>
		<input type="hidden" name="page" value="1">
		<input type="submit" value="Найти"></form></td>
	</tr>
</table>
<table border="1">
	<tr>
		<td>Имя товара</td>
 		<td>Категория</td>
 		<td>Стоимость за 1 шт</td>
 		<td>Количество</td>
 		<td>Сумма</td>
 	</tr>
 	<c:forEach var="product" items="${orderProducts}">
 	<tr>
 		<td>${product.name}</td>
 		<td>${product.category.name}</td>
 		<td>${product.costPerOne}</td>
 		<td>${product.amount}</td>
 		<td>${product.costPerOne*product.amount}</td>
 	</tr>
 	</c:forEach>
</table>
</div>
</body>
</html>