<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="parts/header.jsp"/>

<!-- s-content
================================================== -->
<section class="s-content">

        <div class="row entries-wrap wide">
                <div class="entries">

                        <c:forEach items="${posts}" var="post">
                        <article class="col-block">

                                <div class="item-entry" data-aos="zoom-in">
                                        <div class="item-entry__thumb">
                                                <a href="${pageContext.request.contextPath}/content/${post.getId()}" class="item-entry__thumb-link">
                                                        <img src="${pageContext.request.contextPath}/uploads/${post.getImage()}"
                                                             srcset="uploads/${post.getImage()} 1x, uploads/${post.getImage()} 2x" alt="">
                                                </a>
                                        </div>

                                        <div class="item-entry__text">
                                                <h1 class="item-entry__title"><a href="${pageContext.request.contextPath}/content/${post.getId()}">${post.getTitle()}</a></h1>
                                        </div>
                                </div> <!-- item-entry -->

                        </article> <!-- end article -->
                        </c:forEach>

                </div> <!-- end entries -->
        </div> <!-- end entries-wrap -->

</section> <!-- end s-content -->


<jsp:include page="parts/footer.jsp"/>
