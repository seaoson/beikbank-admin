<!--
* 公用页面
* @author chenyi
* @email qq228112142@qq.com
* @date 2017-11-06 17:39:31
*-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

                 <div class="layui-form-item">

        </div>
              <div class="layui-form-item">
            <label class="layui-form-label">部门编号<span class="span_must">*</span></label>
            <div class="layui-input-normal">
                <input type="text"  name="orgCode" maxlength="20"  value="${model.orgCode}" lay-verify="required" placeholder="请输入部门编号"  class="layui-input">
            </div>
        </div>
              <div class="layui-form-item">
            <label class="layui-form-label">部门名称<span class="span_must">*</span></label>
            <div class="layui-input-normal">
                <input type="text"  name="orgName" maxlength="30"  value="${model.orgName}" lay-verify="required" placeholder="请输入部门名称"  class="layui-input">
            </div>
        </div>

                  <div class="layui-form-item">
                      <label class="layui-form-label">上级部门:</label>
                      <div class="layui-input-normal">

                          <input    value="${model.parentOrgId}"  id="demo"
                                    cyType="treeTool"   cyProps="url:'/organize/select',name:'parentOrgId'"
                                    placeholder="请选择上级菜单" class="layui-input"/>

                      </div>
                  </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地区</label>
            <div cyType="linkSelectTool" cyProps="url:'/area/normalList/',topId:'0000000000',name:'parentAreaId[]'"
                 value="1111111111" class="layui-input-inline">
            </div>
        </div>

      