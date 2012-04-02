<%--
  侧边栏
  User: Deng Xiaolan (824688439@qq.com)
  Date: 12-3-18
  Time: 下午5:09
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="side-box">
    <div class="maincontent">
        <h2>最新文章</h2>
        <ul class="blog-list">
            <c:forEach items="${newArticles}" var="newArticle" begin="0" step="1">
            <li><a href="${ctx}/article/content/${newArticle.id}">${fn:substring(newArticle.subject,0,20)}</a></li>
            </c:forEach>
        </ul>
    </div>
    <div class="maincontent">
        <h2>存档分类</h2>
        <ul class="blog-list">
            <c:forEach items="${archives}" var="archive" begin="0" step="1" >
            <li><a href="${ctx}/archive/list/${archive.id}">${archive.title}&nbsp;(${archive.articleCount})</a></li>
            </c:forEach>
            <li><a href="${ctx}/archive/list">更多存档...</a></li>
        </ul>
    </div>
    <div class="maincontent">
        <h2>Sponsor</h2>
        <div id="sponsors">
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/tf_260x120_v2.gif" alt=""/></a>
            </div>
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/gr_260x120_v1.gif" alt=""/></a>
            </div>
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/ad_260x120_v3.gif" alt=""/></a>
            </div>
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/aj_260x120_v1.gif" alt=""/></a>
            </div>
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/3d_260x120_v3.gif" alt=""/></a>
            </div>
            <div class="banner-img"><a href="#"><img src="${ctx}/static/images/sponsors/cc_260x120_v2.gif" alt=""/></a>
            </div>
        </div>
    </div>
</div>