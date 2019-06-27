<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</div>
</div>
<!-- Footer Start-->
<div class="footer-copyright-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="footer-copy-right">
                    <p>&copy; Admin Panel, 2014-<script>document.write(new Date().getFullYear());</script></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End-->
<script src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/jquery.meanmenu.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/jquery.sticky.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/jquery.scrollUp.min.js"></script>


<!-- create and edit pages scripts -->
<script src="${pageContext.request.contextPath}/admin/js/summernote.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/summernote-active.js"></script>


<!-- index page scripts -->
<script>
    $(document).ready(function(){

        setTimeout(function() {
            $('#successMessage').fadeOut('fast');
        }, 3000);

    });
</script>
<script src="${pageContext.request.contextPath}/admin/js/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/sparkline/sparkline-active.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/data-table/bootstrap-table.js"></script>


<script src="${pageContext.request.contextPath}/admin/js/main.js"></script>
</body>
</html>
