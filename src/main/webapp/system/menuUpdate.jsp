<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
	<head>
		<%@ include file="/system/include/head.jsp"%>
  		<script src="${BASE_PATH}/js/system/menuUpdate.js" type="text/javascript"></script>
  		<style type="text/css">
	  		#zTreeJson{
	  			display:none;
	  		}
	  	</style>
	</head>

	<body>
		<div id="zTreeJson">${jsonZTree}</div>
		<form id="submitForm" action="${BASE_PATH}/system/menu/update.ac" class="eossForm" method="post">
			<input type="hidden" id="menuId" name="id" value="${menu.id}"/>
			<input type="hidden" id="menuLev" name="lev"/>
			<input type="hidden" id="menuPath" name="path"/>
			<table class="eossFromTable">
				<tr class="panel-header">
					<td colspan="99">菜单更新</td>
				</tr>
				<tr>
					<td align="right" width="100">菜单名称：</td>
					<td>
						<input type="text" id="menuName" name="name" value="${menu.name}"/>
					</td>
				</tr>
				<tr>
					<td align="right">选择父菜单：</td>
					<td>
						<input type="hidden" id="menuPid" name="pid"/>
						<ul id="zTreeUL" class="ztree"></ul>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<a id="submitBtn" href="###" class="easyui-linkbutton">提交</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
