<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%@ include  file="../layout/taglib.jsp"%>
	
		
		
		<h4>Here is your home feed:</h4>
		
		<div>
		<c:forEach items="${feed}" var="${post}">
			<b> <c:out  value="${post.from.name}"/>from</b> wrote:
			<p> <c:out  value="${post.message}"/>message text</p>
			
			<hr/>
			</c:forEach>
		</div>
	