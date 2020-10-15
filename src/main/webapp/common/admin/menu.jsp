<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="container-fluid">
    <div class="row">
        <!-- Main Sidebar -->
        <aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
            <div class="main-navbar">
                <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
                    <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                        <div class="d-table m-auto">
                            <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;"
                                 src="../template/admin/images/shards-dashboards-logo.svg"
                                 alt="Blog Review">
                            <span class="d-none d-md-inline ml-1">Blog Review</span>
                        </div>
                    </a>
                    <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                        <i class="material-icons">&#xE5C4;</i>
                    </a>
                </nav>
            </div>
            <div class="nav-wrapper">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="/">
                            <i class="material-icons">autorenew</i>
                            <span>Về trang chính</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ home_active }}" href="/admin/home">
                            <i class="material-icons">edit</i>
                            <span>Bảng điều khiển</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ store_active }}" href='<c:url value="/admin/post-management?page=1&maxPageItem=10&sortName=title&sortBy=desc"/>'>
                            <i class="material-icons">vertical_split</i>
                            <span>Quản lý bài viết</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ user_active }}" href='<c:url value="/admin/user-management?page=1&maxPageItem=2"/>'>
                            <i class="material-icons">note_add</i>
                            <span>Quản lý người dùng</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>

    </div>
  </div>