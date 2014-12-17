<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String spath = request.getContextPath();
String sbasePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+spath+"/";
%>
<div id="sidebar-content">
          <ul id="nav">
          <c:if test="${ sessionScope.loginUser.isAdmin == 1 }">
            <li>
              <a href="<%=spath%>/user/manage">
                <i class="icon-dashboard">
                </i>
                用户管理
              </a>
            </li>
          </c:if>
            <li>
              <a href="javascript:void(0);">
                <i class="icon-desktop">
                </i>
               订单管理
               
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="ui_general.html">
                    <i class="icon-angle-right">
                    </i>
                    订单录入
                  </a>
                </li>
                <li>
                  <a href="ui_buttons.html">
                    <i class="icon-angle-right">
                    </i>
                    订单修改
                  </a>
                </li>
                <li>
                  <a href="ui_tabs_accordions.html">
                    <i class="icon-angle-right">
                    </i>
                    订单更新
                  </a>
                </li>
                <li>
                  <a href="ui_sliders.html">
                    <i class="icon-angle-right">
                    </i>
                    订单查询
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <a href="<%=spath%>/msg">
                <i class="icon-edit">
                </i>
               站内信
              </a>
            </li>
           
            <c:if test="${ sessionScope.loginUser.isAdmin == 1 }">
      
            <li>
              <a href="input_select.html">
                <i class="icon-list-ol">
                </i>
                前台内容管理
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    首页
                    <span class="arrow">
                    </span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-folder-open">
                        </i>
                        经营领域
                        <span class="arrow">
                        </span>
                      </a>
                      <ul class="sub-menu">
                        <li>
                          <a href="<%=spath %>/content/manage">
                            <i class="icon-folder-open">
                            </i>
                            城际快运专线
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-folder-open">
                            </i>
                            公路货物运输
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-folder-open">
                            </i>
                            仓储管理服务
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-folder-open"></i>
                            同城配送服务
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-folder-open"></i>
                            国际货运代理
                          </a>
                        </li>
                      </ul>
                    </li>
                    
                  </ul>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    关于我们
                    <span class="arrow">
                    </span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="<%=spath %>/admin/column/7?curPageNum=1">
                        <i class="icon-folder-open">
                        </i>
                        企业介绍
                      </a>
                    </li>
                    <li>
                      <a href="<%=spath %>/admin/column/8?curPageNum=1">
                        <i class="icon-folder-open">
                        </i>
                        企业理念
                      </a>
                    </li>
                    <li>
                      <a href="<%=spath %>/admin/column/9?curPageNum=1">
                        <i class="icon-folder-open">
                        </i>
                        企业战略
                      </a>
                    </li>
                    <li>
                      <a href="<%=spath %>/admin/column/10?curPageNum=1">
                        <i class="icon-folder-open">
                        </i>
                        组织架构
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    资讯中心
                  </a>
                  <ul class="sub-menu">
                  	<li>
                  	  <a href="<%=spath %>/admin/column/11?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	行业新闻
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/12?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	企业快讯
                  	  </a>
                  	</li>
                  </ul>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    经营领域
                  </a>
                  <ul class="sub-menu">
                  	<li>
                  	  <a href="<%=spath %>/admin/column/1?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	城际快运专线
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/2?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	公路货物运输
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/3?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  仓储管理服务
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/5?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	同城配送服务
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/6?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	国际货运代理
                  	  </a>
                  	</li>
                  </ul>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    人才中心
                  </a>
                  <ul class="sub-menu">
                  	<li>
                  	  <a href="<%=spath %>/admin/column/13?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	教育培训
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/14?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	员工风采
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/15?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	加入我们
                  	  </a>
                  	</li>
                  </ul>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    联系我们
                  </a>
                  <ul class="sub-menu">
                  	<li>
                  	  <a href="<%=spath %>/admin/column/16?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	总市场部
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/17?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	   扬州项目部
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/18?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	南京项目部
                  	  </a>
                  	</li>
                  	<li>
                  	  <a href="<%=spath %>/admin/column/19?curPageNum=1">
                  	  	<i class="icon-folder-open"></i>
                  	  	镇江项目部
                  	  </a>
                  	</li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>
              <a href="javascript:void(0);">
                <i class="icon-folder-open"></i>
                编辑栏目
              </a>
            </li>
            </c:if>
          </ul>
          <div class="sidebar-widget align-center">
            <div class="btn-group" data-toggle="buttons" id="theme-switcher">
              <label class="btn active">
                <input type="radio" name="theme-switcher" data-theme="bright">
                <i class="icon-sun">
                </i>
                白天
              </label>
              <label class="btn">
                <input type="radio" name="theme-switcher" data-theme="dark">
                <i class="icon-moon">
                </i>
                夜晚
              </label>
            </div>
          </div>
        </div>
        <div id="divider" class="resizeable">
        </div>