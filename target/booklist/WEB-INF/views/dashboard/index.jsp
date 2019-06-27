<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="parts/header.jsp"/>

<div class="admin-dashone-data-table-area mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="sparkline8-list shadow-reset">
                    <div class="sparkline8-graph">
                        <div class="datatable-dashv1-list custom-datatable-overright">
                            <c:set value="${deleted}" var="deleted" scope="request"/>
                            <c:if test="${deleted ne null}">
                            <div class="alert alert-success w-alert fixed-bottom ml-auto mr-2" id="successMessage">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                ${deleted}
                                <c:remove var="deleted" scope="session" />
                            </div>
                            </c:if>

                            <c:set value="${updated}" var="updated" scope="request"/>
                            <c:if test="${updated ne null}">
                            <div class="alert alert-success w-alert fixed-bottom ml-auto mr-2" id="successMessage">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                ${updated}
                                <c:remove var="updated" scope="session" />
                            </div>
                            </c:if>

                            <c:set value="${created}" var="created" scope="request"/>
                            <c:if test="${created ne null}">
                            <div class="alert alert-success w-alert fixed-bottom ml-auto mr-2" id="successMessage">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                ${created}
                                <c:remove var="created" scope="session" />
                            </div>
                            </c:if>
                            <table id="table" data-toggle="table" data-pagination="true" data-search="true">
                                <thead>
                                <tr>
                                    <th>Category</th>
                                    <th>Title</th>
                                    <th>Content</th>
                                    <th>Image</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${posts}" var="post">
                                <tr>
                                    <td>
                                        <c:forEach items="${categories}" var="category">
                                            <c:set value="${category.getId()}" var="catId" scope="request"/>
                                            <c:set value="${post.getCat_id()}" var="postCatId" scope="request"/>
                                            <c:if test="${catId eq postCatId}">
                                                ${category.getName()}
                                            </c:if>
                                        </c:forEach>
                                    </td>
                                    <td>${post.getTitle()}</td>
                                    <td>${post.getContent()}</td>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/uploads/${post.getImage()}" width="100" height="60">
                                    </td>
                                    <td>
                                        <div class="btn-group project-list-action">
                                            <a href="${pageContext.request.contextPath}/dashboard/edit/${post.getId()}" class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="btn-group project-list-action">
                                            <form action="${pageContext.request.contextPath}/dashboard/delete/${post.getId()}" method="post">
                                                <button class="btn btn-white btn-xs" type="submit" onclick="return confirm('Are you sure you want to delete this content?');"><i class="fa fa-remove"></i> Delete</button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="parts/footer.jsp"/>
