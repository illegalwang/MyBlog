<#-- form -->
<form class="form-horizontal" id="editForm" action="/user/usermanager" method="POST">
<#-- 添加模态框 -->
    <input type="hidden" name="_method" value="PUT">
    <input type="hidden" id="modalUserId" name="userId">
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="inputUsername" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputUsername" name="username" placeholder="用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputTrueName" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputTrueName" name="trueName" placeholder="姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" name="password" placeholder="密码">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
</form>
<#-- form -->