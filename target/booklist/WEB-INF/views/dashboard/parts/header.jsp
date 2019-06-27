<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Dashboard</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/img/favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i,800" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/adminpro-custon-icon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/meanmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/modals.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/admin-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/admin-responsive.css">


    <!-- index page css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/data-table/bootstrap-editable.css">

    <!-- create and edit pages css files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/summernote.css">



    <script src="${pageContext.request.contextPath}/admin/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body class="materialdesign">
<!-- Header top area start-->
<div class="wrapper-pro">
    <div class="left-sidebar-pro">
        <nav id="sidebar">
            <div class="sidebar-header">
            </div>
            <div class="left-custom-menu-adp-wrap">
                <ul class="nav navbar-nav left-sidebar-menu-pro">
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/dashboard" role="button" aria-expanded="false" class="nav-link"><i class="fa big-icon fa-home"></i> <span class="mini-dn">Home</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    </li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/dashboard/create" role="button" aria-expanded="false" class="nav-link"><i class="fa big-icon fa-files-o"></i> <span class="mini-dn">Create</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/logout" onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-sign-out"></i> <span class="mini-dn">Logout
                        </span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                    </li>
                    <form id="logout-form" action="${pageContext.request.contextPath}/logout" method="POST" style="display: none;">

                    </form>
                </ul>
            </div>
        </nav>
    </div>
    <!-- Header top area start-->
    <div class="content-inner-all">
        <div class="header-top-area">
            <div class="fixed-header-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12">
                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                <i class="fa fa-bars"></i>
                            </button>
                            <div class="admin-logo logo-wrap-pro">
                                <a href="#"><img src="${pageContext.request.contextPath}/admin/img/logo/log.png" alt="" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header top area end-->
        <!-- Mobile Menu start -->
        <div class="mobile-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul class="mobile-menu-nav">
                                    <li><a data-toggle="collapse" data-target="#Charts" href="${pageContext.request.contextPath}/dashboard">Home <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#Pagemob" href="${pageContext.request.contextPath}/dashboard/create">Create <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/logout" onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();" data-toggle="collapse" data-target="#Pagemob">Logout<span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->
