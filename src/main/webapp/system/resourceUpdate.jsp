<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
	<head>
		<%@ include file="/system/include/head.jsp"%>
  		<script src="${BASE_PATH}/js/system/resourceUpdate.js" type="text/javascript"></script>
  		<style type="text/css">
  			#zTreeNodeJson{
  				display:none;
  			}
  		</style>
	</head>

	<body>
		<form id="submitForm" action="${BASE_PATH}/system/resource/update.ac" class="eossForm" method="post">
			<input type="hidden" id="menuId" name="id" value="${menu.id}"/>
			<input type="hidden" id="menuLev" name="lev" value="${menu.lev}"/>
			<input type="hidden" id="menuPath" name="path" value="${menu.path}"/>
			<table class="eossFromTable">
				<tr class="panel-header">
					<td colspan="99">资源更新</td>
				</tr>
				<tr>
					<td align="right" width="100">资源名称：</td>
					<td>
						<input type="text" id="menuName" name="name" value="${menu.name}"/>
					</td>
				</tr>
				<tr>
					<td align="right" width="100">资源目标：</td>
					<td>
						<input type="text" id="menuTarget" name="target" value="${menu.target}"/>&nbsp;&nbsp;例如：_blank, _self, northFrame, southFrame, westFrame, centerFrame
					</td>
				</tr>
				<tr>
					<td align="right" width="100">资源地址：</td>
					<td>
						<input type="text" class="inputMid" id="menuUrl" name="url" value="${menu.url}"/>
					</td>
				</tr>
				<tr>
					<td align="right" width="100">所属菜单：</td>
					<td>
						<div id="zTreeNodeJson">${zTreeNodeJson}</div>
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
