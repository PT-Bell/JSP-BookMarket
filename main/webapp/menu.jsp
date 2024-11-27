<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId=(String) session.getAttribute("sessionId");
%>

<header class="pb-3 mb-4 border-bottom">
    <div class="d-flex justify-content-between align-items-center">
        <a href="./welcome.jsp" class="d-flex align-items-center text-dark text-decoration-none">
            <svg width="32" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 3.293l-6 6V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9.293l-6-6zm5 6.707v4a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-3H6v3a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-4l6-6 6 6z" />
            </svg>
            <span class="fs-4">Home</span>
        </a>
        <ul class="nav nav-pills">
        	<c:choose>
        		<c:when test="$(empty sessionId)">
        			<li class="nav-item"><a class="nav-link" href='<c:url value="/member/loginMember.jsp" />'>Login </a></li>
        			<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp" />'>Join</a></li>
        		</c:when>
        		<c:otherwise>
        			<li style="padding-top": 7px; color: white">[<%=sessionId %>님]
        			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp" />">Logout </a></li>
        			<li class="nav-item"><a class="nav-link" href="<c:url value="/member/i[date]Member.jsp" />">Profile</a></li>
        		</c:otherwise>
        	</c:choose>
            <li class="nav-item"><a href="<c:url value="/books.jsp" />" class="nav-link">Book List</a></li>
            <li class="nav-item"><a href="<c:url value="/addBook.jsp" />"class="nav-link">Add Book</a></li>
            <li class="nav-item"><a href="<c:url value="/editBook.jsp?edit=update" />" class="nav-link">Update Book</a></li>
            <li class="nav-item"><a href="<c:url value="/editBook.jsp?edit=delete" />" class="nav-link">Delete Book</a></li>
        </ul>
    </div>
</header>
