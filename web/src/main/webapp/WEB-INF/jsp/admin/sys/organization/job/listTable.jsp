<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<table id="table" class="sort-table table table-bordered table-hover" data-async="true">
    <thead>
    <tr>
        <th style="width: 80px">
            <a class="check-all" href="javascript:;">全选</a>
            |
            <a class="reverse-all" href="javascript:;">反选</a>
        </th>
        <th style="width: 100px" sort="id">编号</th>
        <th style="width: 150px" sort="name">姓名</th>
        <th>是否显示</th>
    </tr>
    <tbody>
    <c:forEach items="${page.content}" var="m">
        <tr>
            <td class="check"><input type="checkbox" name="ids" value="${m.id}" root="${m.root}"></td>
            <td>
                <a class="btn btn-link btn-edit" href="${ctx}/admin/sys/organization/job/${m.id}">${m.id}</a>
            </td>
            <td>${m.name}</td>
            <td>${m.show ? '是' : '否'}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<es:page page="${page}"/>

<%@include file="/WEB-INF/jsp/common/import-zTree-js.jspf"%>
<script type="text/javascript">
    $.zTree.initMaintainBtn("${ctx}/admin/sys/organization/job", $("#table"), ${not empty param.async and param.async});
</script>