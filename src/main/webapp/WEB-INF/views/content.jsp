<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="parts/header.jsp"/>


<!-- s-content
================================================== -->
<section class="s-content s-content--top-padding s-content--narrow">

    <article class="row entry format-standard">

        <div class="entry__media col-full">
            <div class="entry__post-thumb">
                <img src="${pageContext.request.contextPath}/uploads/${post.getImage()}"
                     srcset="${pageContext.request.contextPath}/uploads/${post.getImage()} 2000w,
                                 ${pageContext.request.contextPath}/uploads/${post.getImage()} 1000w,
                                 ${pageContext.request.contextPath}/uploads/${post.getImage()} 500w"
                     sizes="(max-width: 2000px) 100vw, 2000px" alt="">
            </div>
        </div>

        <div class="entry__header col-full">
            <h1 class="entry__header-title display-1">
                ${post.getTitle()}
            </h1>
        </div>

        <div class="col-full entry__main">

            <p class="lead drop-cap">${post.getContent()}</p>


        </div> <!-- s-entry__main -->

    </article> <!-- end entry/article -->




</section> <!-- end s-content -->

<jsp:include page="parts/footer.jsp"/>
