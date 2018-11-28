<tr class='active text-muted' style='cursor: pointer;'
    onclick='showMenuValue({"id":1,"menuName":"文章管理","menuPath":"","parentId":0,"menuSort":1,"cssClass":"glyphicon glyphicon-file","childList":null})'>
    <td><i class='glyphicon glyphicon-file'></i>&nbsp;文章管理
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group plusBtn' data-id='1'><i
                    class='text-muted glyphicon glyphicon-plus'></i></button>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='1'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='active text-muted' style='cursor: pointer;'
    onclick='showMenuValue({"id":2,"menuName":"评论管理","menuPath":"","parentId":0,"menuSort":2,"cssClass":"glyphicon glyphicon-pencil","childList":null})'>
    <td><i class='glyphicon glyphicon-pencil'></i>&nbsp;评论管理
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group plusBtn' data-id='2'><i
                    class='text-muted glyphicon glyphicon-plus'></i></button>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='2'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='active text-muted' style='cursor: pointer;'
    onclick='showMenuValue({"id":10,"menuName":"随便管理","menuPath":"#xxxSetting","parentId":0,"menuSort":4,"cssClass":"glyphicon glyphicon-asterisk","childList":[{"id":28,"menuName":"随便菜单一","menuPath":"","parentId":10,"menuSort":1,"cssClass":"glyphicon glyphicon-bold","childList":null},{"id":29,"menuName":"随便菜单二","menuPath":"","parentId":10,"menuSort":2,"cssClass":"glyphicon glyphicon-font","childList":null},{"id":30,"menuName":"随便菜单三","menuPath":"","parentId":10,"menuSort":3,"cssClass":"glyphicon glyphicon-list","childList":null}]})'>
    <td><i class='glyphicon glyphicon-asterisk'></i>&nbsp;随便管理&nbsp;&nbsp;<button
            class='btn btn-xs btn-default btn-group showChildBtn' data-child='#xxxSetting'><i
            class='glyphicon glyphicon-chevron-down'></i></button>
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group plusBtn' data-id='10'><i
                    class='text-muted glyphicon glyphicon-plus'></i></button>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='10'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#xxxSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-bold'></i>&nbsp;随便菜单一
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='28'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#xxxSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-font'></i>&nbsp;随便菜单二
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='29'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#xxxSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-list'></i>&nbsp;随便菜单三
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='30'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='active text-muted' style='cursor: pointer;'
    onclick='showMenuValue({"id":22,"menuName":"测试菜单","menuPath":"#newCreate","parentId":0,"menuSort":4,"cssClass":"glyphicon glyphicon-flag","childList":[{"id":24,"menuName":"测试子菜单","menuPath":"","parentId":22,"menuSort":1,"cssClass":"glyphicon glyphicon-fast-backward","childList":null},{"id":25,"menuName":"测试三菜单","menuPath":"","parentId":22,"menuSort":3,"cssClass":"glyphicon glyphicon-camera","childList":null},{"id":26,"menuName":"测试四菜单","menuPath":"","parentId":22,"menuSort":3,"cssClass":"glyphicon glyphicon-headphones","childList":null},{"id":27,"menuName":"测试五菜单","menuPath":"","parentId":22,"menuSort":6,"cssClass":"glyphicon glyphicon-indent-right","childList":null}]})'>
    <td><i class='glyphicon glyphicon-flag'></i>&nbsp;测试菜单&nbsp;&nbsp;<button
            class='btn btn-xs btn-default btn-group showChildBtn' data-child='#newCreate'><i
            class='glyphicon glyphicon-chevron-down'></i></button>
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group plusBtn' data-id='22'><i
                    class='text-muted glyphicon glyphicon-plus'></i></button>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='22'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#newCreate' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-fast-backward'></i>&nbsp;测试子菜单
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='24'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#newCreate' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-camera'></i>&nbsp;测试三菜单
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='25'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#newCreate' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-headphones'></i>&nbsp;测试四菜单
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='26'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#newCreate' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-indent-right'></i>&nbsp;测试五菜单
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='27'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='active text-muted' style='cursor: pointer;'
    onclick='showMenuValue({"id":3,"menuName":"系统管理","menuPath":"#systemSetting","parentId":0,"menuSort":99,"cssClass":"glyphicon glyphicon-cog","childList":[{"id":4,"menuName":"用户管理","menuPath":"/user/usermanager","parentId":3,"menuSort":1,"cssClass":"glyphicon glyphicon-user","childList":null},{"id":5,"menuName":"菜单管理","menuPath":"/menu/menumanager","parentId":3,"menuSort":2,"cssClass":"glyphicon glyphicon-th-list","childList":null},{"id":6,"menuName":"角色管理","menuPath":"","parentId":3,"menuSort":3,"cssClass":"glyphicon glyphicon-asterisk","childList":null},{"id":7,"menuName":"修改密码","menuPath":"","parentId":3,"menuSort":4,"cssClass":"glyphicon glyphicon-edit","childList":null},{"id":8,"menuName":"查看日志","menuPath":"","parentId":3,"menuSort":5,"cssClass":"glyphicon glyphicon-eye-open","childList":null}]})'>
    <td><i class='glyphicon glyphicon-cog'></i>&nbsp;系统管理&nbsp;&nbsp;<button
            class='btn btn-xs btn-default btn-group showChildBtn' data-child='#systemSetting'><i
            class='glyphicon glyphicon-chevron-down'></i></button>
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group plusBtn' data-id='3'><i
                    class='text-muted glyphicon glyphicon-plus'></i></button>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='3'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#systemSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-user'></i>&nbsp;用户管理
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='4'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#systemSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-th-list'></i>&nbsp;菜单管理
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='5'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#systemSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-asterisk'></i>&nbsp;角色管理
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='6'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#systemSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-edit'></i>&nbsp;修改密码
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='7'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>
<tr class='warning text-muted' data-toggle='#systemSetting' style='cursor: pointer;display: none;'
    onclick='showMenuValue([object Object])'>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<i class='glyphicon glyphicon-eye-open'></i>&nbsp;查看日志
        <div class='btn-group pull-right'>
            <button class='btn btn-xs btn-default btn-group minusBtn' data-id='8'><i
                    class='text-muted glyphicon glyphicon-minus'></i></button>
        </div>
    </td>
</tr>