<%--
  Created by IntelliJ IDEA.
  User: Mr
  Date: 2019/1/6
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
    <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link type="text/css" href="css/theme.css" rel="stylesheet">
    <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
    <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
          rel='stylesheet'>
</head>
<body>
<jsp:include page="adminHead.jsp"></jsp:include>
<!-- /navbar -->
<div class="wrapper">
    <div class="container">
        <div class="row">
            <jsp:include page="adminNav.jsp"></jsp:include>
            <div class="span9">
                <div class="content">

                    <div class="module">
                        <div class="module-head">
                            <h3>用户信息修改</h3>
                        </div>
                        <div class="module-body">
                            <br />

                            <form class="form-horizontal row-fluid">
                                <div class="control-group">
                                    <label class="control-label" >ID</label>
                                    <div class="controls">
                                        <div class="input-append">
                                            <input type="text" placeholder="5.000" class="span8" id="userid">
                                        </div>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="user-account">账号</label>
                                    <div class="controls">
                                        <input type="text" id="user-account" placeholder="User Name" class="span8">

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">用户名</label>
                                    <div class="controls">
                                        <input data-title="A tooltip for the input" id="user-username" type="text" data-original-title="" class="span8 tip">
                                        <span class="help-inline">至少5个字符</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" >密码</label>
                                    <div class="controls">
                                        <input data-title="A tooltip for the input" id="user-password" type="text" data-original-title="" class="span8 tip">
                                        <span class="help-inline">至少5个字符</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" >确认密码</label>
                                    <div class="controls">
                                        <input data-title="A tooltip for the input" id="user-again-password" type="text" data-original-title="" class="span8 tip">
                                        <span class="help-inline">至少5个字符</span>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" >身份</label>
                                    <div class="controls">
                                        <input data-title="A tooltip for the input" id="user-role" type="text" placeholder="可不填" data-original-title="" class="span8 tip">
                                        <%--<span class="help-inline">至少2个字符</span>--%>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <div class="controls">
                                        <a class="btn btn-mini btn-info" id="btn-cuser" onclick="updateUser()">修改</a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a class="btn btn-mini btn-inverse" href="userList.jsp">返回</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div><!--/.content-->
            </div>
        </div>
    </div>
    <!--/.container-->
</div>
<!--/.wrapper-->
<div class="footer">
    <div class="container">
        Campus idle goods trading platform.
    </div>
</div>
<script src="scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.pie.js"></script>
<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="scripts/common.js" type="text/javascript"></script>
<script src="js/common/global.js"></script>
<script src="js/common/tableAdvaced.js"></script>
<script src="js/community/adminCommunity.js"></script>
<script src="js/user/updateUser.js"></script>
</body>
</html>
