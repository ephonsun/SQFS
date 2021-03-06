﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
	contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- c标签 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><!-- fmt标签 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SQ金服</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/common.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/user.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript" src="js/user-check-1.0.1.js"></script>
<script type="text/javascript" src="script/common.js"></script>
<script src="script/user.js" type="text/javascript"></script>
</head>
<body>
<header>
  <div class="header-top min-width">
    <div class="container fn-clear"> <strong class="fn-left">咨询热线：400-668-6698<span class="s-time">服务时间：9:00 - 18:00</span></strong>
      <ul class="header_contact">
        <li class="c_1"> <a class="ico_head_weixin" id="wx"></a>
          <div class="ceng" id="weixin_xlgz" style="display: none;">
            <div class="cnr"> <img src="images/code.png"> </div>
            <b class="ar_up ar_top"></b> <b class="ar_up_in ar_top_in"></b> </div>
        </li>
        <li class="c_2"><a href="#" target="_blank" title="官方QQ" alt="官方QQ"><b class="ico_head_QQ"></b></a></li>
        <li class="c_4"><a href="#" target="_blank" title="新浪微博" alt="新浪微博"><b class="ico_head_sina"></b></a></li>
      </ul>
      <ul class="fn-right header-top-ul">
        <li> <a href="index" class="app">返回首页</a> </li>
        <c:choose>
        	<c:when test="${sessionScope.info==null }">
        		<li>
		          <div class=""><a href="register/home" class="c-orange" title="免费注册">免费注册</a></div>
		        </li>
		        <li>
		          <div class=""><a href="login/home" class="js-login" title="登录">登录</a></div>
		        </li>
        	</c:when>
        	<c:otherwise>
        		<li>
		          <div class="">欢迎 ${sessionScope.info.user_name } 登录</div>
		        </li>
		        <li><a href="user/logout">注销</a></li>
        	</c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
  <div class="header min-width">
    <div class="container">
      <div class="fn-left logo"> <a class="" href="index"> <img src="images/logo.png"  title=""> </a> </div>
      <ul class="top-nav fn-clear">
        <li class="on"> <a href="index">首页</a> </li>
        <li> <a href="invest/investList" id="gotoInvest" >我要投资</a> </li>
 <li> <a href="trans/loan5/home"  id="gotoLoanPage">我要贷款</a>
 <input type="hidden" value="${sessionScope.info.user_checked } " id="user_check_info_flag"> </li>
        <li> <a href="帮助中心/home">安全保障</a> </li>
        <c:choose>
        	<c:when test="${sessionScope.info.user_id==null }">
        		<li class="top-nav-safe"> <a href="trans/PersonalCenter/getPensonalInformation/52555">我的账户</a> </li>
        	</c:when>
        	<c:otherwise>
        		<li class="top-nav-safe"> <a href="trans/PersonalCenter/getPensonalInformation/${sessionScope.info.user_id }">我的账户</a> </li>
        	</c:otherwise>
        </c:choose>
        <li> <a href="公司简介/home">关于我们</a> </li>
      </ul>
    </div>
  </div>
</header>
<!--个人中心-->
<div class="wrapper wbgcolor">
  <div class="w1200 personal">
    <div class="credit-ad"><img src="images/clist1.jpg" width="1200" height="96"></div>
    <div id="personal-left" class="personal-left">
      <ul>
        <li class="pleft-cur"><span><a href="trans/PersonalCenter/getPensonalInformation/${sqUser.user_id }"><i class="dot dot1"></i>账户总览</a></span></li>
        <li><span><a style="font-size:14px;text-align:center;width:115px;padding-right:35px;" href="trans/PersonalCenter/getMoneyRecord/${sqUser.user_id }">资金记录</a></span></li>
        <li><span><a style="font-size:14px;text-align:center;width:115px;padding-right:35px;" href="trans/PersonalCenter/getDepositsHistory/${sqUser.user_id }">投资记录</a></span></li>
        <li><span><a style="font-size:14px;text-align:center;width:115px;padding-right:35px;" href="trans/PersonalCenter/getReturnedMoneyPlan/${sqUser.user_id }">回款计划</a></span></li>
        <li class=""><span><a href="trans/PersonalCenter/OpenThirdParty/${sqUser.user_id }"><i class="dot dot02"></i>开通第三方</a> </span> </li>
        <li><span><a href="trans/PersonalCenter/Recharge/${sqUser.user_id }/2"><i class="dot dot03"></i>充值</a></span></li>
        <li class=""><span><a href="trans/PersonalCenter/Withdraw/${sqUser.user_id }/2"><i class="dot dot04"></i>提现</a></span></li>
        <li><span><a href="trans/PersonalCenter/accountSetting/${sqUser.user_id }"><i class="dot dot09"></i>账户设置</a></span></li>
      </ul>
    </div>
    <label id="typeValue" style="display:none;"> </label>
    <script>
		//<![CDATA[
			function showSpan(op){
				$("body").append("<div id='mask'></div>");
				$("#mask").addClass("mask").css("display","block");
	
				$("#"+op).css("display","block");
			}
	
			function displaySpan(op){
				$("#mask").css("display","none");
				$("#"+op).css("display","none");
			}
		//]]>
		</script>
    <script type="text/javascript">
		//<![CDATA[
			function checkActualMoney()
			{
				var actualMoney=Number($("#form\\:actualMoney").val());
				var actualMessage=$("#actualMoney_message");
				var nullFlag=actualMoney=="";
				if(nullFlag==true)
				{
					$(actualMessage).text("请输入您要提现的金额");
					$(actualMessage).show();
					return false;
				}
				else
				{
					$(actualMessage).hide();
				}
				var numberFlag=isNaN(actualMoney);
				if(numberFlag==true)
				{
					$(actualMessage).text("提现金额必须大于2.00 元，单笔不超过50 万");
					$(actualMessage).show();
					return false;
				}
				else
				{
					$(actualMessage).hide();
				}
				var legalFlag1=actualMoney>2;
				var legalFlag2=actualMoney<=500000;
				if(!legalFlag1||!legalFlag2)
				{
					$(actualMessage).text("提现金额必须大于2.00 元，单笔不超过50 万");
					$(actualMessage).show();
					return false;
				}
				else
				{
					$(actualMessage).hide();
				}
				//提现金额小数位
				var legalRegex="^(([1-9]+[0-9]*)|((([1-9]+[0-9]*)|0)\\.[0-9]{1,2}))$";
				var legalPattern=new RegExp(legalRegex);
				var legalFlag3=legalPattern.test(actualMoney);
				if(!legalFlag3)
				{
					$(actualMessage).text("小数位最多两位!");
					$(actualMessage).show();
					return false;
				}
				else
				{
					$(actualMessage).hide();
				}
				var balance=Number(actualMoney*0.001);
				//提现金额小于余额 
				var legalFlag=(actualMoney-balance).toFixed(2)<=0;
				if(legalFlag)
				{
					$(actualMessage).text("余额不足");
					$(actualMessage).show();
					return false;
				}
				else
				{
					$(actualMessage).hide();
				}
				return true;
			}
			
			function amount(th){
			    var regStrs = [
			        ['^0(\\d+)$', '$1'], //禁止录入整数部分两位以上，但首位为0
			        ['[^\\d\\.]+$', ''], //禁止录入任何非数字和点
			        ['\\.(\\d?)\\.+', '.$1'], //禁止录入两个以上的点
			        ['^(\\d+\\.\\d{2}).+', '$1'] //禁止录入小数点后两位以上
			    ];
			    for(i=0; i<regStrs.length; i++){
			        var reg = new RegExp(regStrs[i][0]);
			        th.value = th.value.replace(reg, regStrs[i][1]);
			    }
			    if(th.value>500000){
			    	th.value = th.value.substr(0,th.value.length-1);
			    }
			}
			//]]>
		</script>
    <div class="personal-main">
      <div class="personal-deposit">
        <h3><i>提现</i></h3>
        <form id="form" name="form" method="post" action="trans/PersonalCenter/Withdraw/${sqUser.user_id }/1" enctype="application/x-www-form-urlencoded">
          <input type="hidden" name="form" value="form">
          <div class="deposit-form" style="margin-top:0px;border-top:0px none;">
            <h6>填写提现金额</h6>
            <ul>
              <li> 
              	<span class="deposit-formleft">可用金额</span>
              	<span class="deposit-formright"> 
              	<i><label id="form:blance" class="blance">
              		<c:choose>
		        	<c:when test="${sqUser.account_balance !=null and sqUser.account_balance !='' }">
						${sqUser.account_balance }
		        	</c:when>
		        	<c:otherwise>
		        		0.00
		        	</c:otherwise>
		        </c:choose>
              	</label></i>元 
                </span> 
              </li>
              <li> 
              	<span class="deposit-formleft">提现金额</span> 
              	<span class="deposit-formright">
                	<input id="form:actualMoney" type="text" name="money" class="deposite-txt" maxlength="10">元
                </span> 
                <span id="actualMoneyErrorDiv"><span id="actualMoney_message" style="display:none" class="error"></span></span> 
                </li>
              <li> 
              	<span class="deposit-formleft">提现费用</span>
              	<em id="txfy" class="markicon fl"></em> 
              	<span class="deposit-formright deposit-formright1"> 
              	<i>
                <label id="form:fee" class="fee"> 0.00</label>
                </i>元 </span> 
                <span class="txarrow-show">提现金额的0.1%，最低不低于2元，最高100元封顶</span>
                <span class="txicon-show"></span></li>
              <li>
              	<span class="deposit-formleft">实际到账金额</span>
              	<em id="dzje" class="markicon fl"></em>
              	<span class="deposit-formright deposit-formright1"><i>
                <label id="form:cashFine" class="cashFine"> 0.00</label>
                </i> 元</span>
                <span class="dzarrow-show">提现金额 - 提现费用</span>
                <span class="dzicon-show"></span> 
              </li>
              <li>
             	<c:choose>
		        	<c:when test="${sqUser.account_balance !=null and sqUser.account_balance !='' }">
						<input type="submit" name="form:j_idt78" value="提现" class="btn-depositok" onclick="return checkActualMoney()">
		        	</c:when>
		        	<c:otherwise>
						<input type="button" value="余额不足" style="background-color: #A0A0A0;" class="btn-depositok" disabled="disabled" >
		        	</c:otherwise>
		        </c:choose>
              </li>
            </ul>
          </div>
        </form>
        <div class="deposit-tip"> 温馨提示：<br>
          1、用户需在完成身份认证、开通丰付托管账户并绑定银行卡后，方可申请提现；<br>
          2、请务必在提现时使用持卡人与身份认证一致的银行卡号，且确保填写信息准确无误；<br>
          3、工作日当天16:00前提交的提现申请将在当天处理，默认为T+1到账；<br>
          4、提现金额单笔上限为50万元，单日累计总额不可超过100万元；<br>
          5、提现手续费为提现金额的0.1%，最低每笔2元，100元封顶，手续费由第三方托管账户收取，用户自行承担。<br>
        </div>
      </div>
    </div>
    <script type="text/javascript">
    		$("input[name=money]").keyup(function(){
    			$("#form\\:fee").html(0.00);
				$("#form\\:cashFine").html(0.00);
    			var actualMoney=Number($("#form\\:actualMoney").val());
    			var actualMessage=$("#actualMoney_message");
    			var numberFlag=isNaN(actualMoney);
				if(numberFlag==true)
				{
					$(actualMessage).text("提现金额必须大于2.00 元，单笔不超过50 万");
					$(actualMessage).show();
				}else{
					//提现金额小数位
					var legalRegex="^(([1-9]+[0-9]*)|((([1-9]+[0-9]*)|0)\\.[0-9]{1,2}))$";
					var legalPattern=new RegExp(legalRegex);
					var legalFlag3=legalPattern.test(actualMoney);
					if(!legalFlag3)
					{
						$(actualMessage).text("输入的金额不正确!");
						$(actualMessage).show();
					}
					else
					{   
						var balance = $("#form\\:blance").text();
						actualMoney = actualMoney * 1;
						balance = balance * 1;
						if(actualMoney > balance) {
							$(actualMessage).text("提现金额不能超过账户余额");
							$(actualMessage).show();
							return;
						}
						$(actualMessage).hide();
						var legalFlag1=actualMoney>2;
						var legalFlag2=actualMoney<=500000;
						if(!legalFlag1||!legalFlag2)
						{
							$(actualMessage).text("提现金额必须大于2.00 元，单笔不超过50 万");
							$(actualMessage).show();
						}
						else
						{
							$(actualMessage).hide();
							var fee = (actualMoney * 0.001).toFixed(2);
							if(fee<=2){
								$("#form\\:fee").html(2);
								$("#form\\:cashFine").html(actualMoney-2);
							}else{
								$("#form\\:fee").html(fee);
								$("#form\\:cashFine").html(actualMoney-fee);
							}
							
						}
					}
				}
    			
				
    		});
			$("#form\\:actualMoney").focus(
				   function(){
					   	$(this).css({"font-size":"24px","font-weight":"bold","font-family":"Arial","border":"1px solid #0caffe"});
					   if($("#form\\:actualMoney").val() == "") { 
						   	$("#form\\:actualMoney").val("")
							$(this).css({"font-size":"24px","font-weight":"bold","font-family":"Arial"});
					   }
					}).blur(
					function(){
					   $(this).css("border","1px solid #D0D0D0");
					   if($("#form\\:actualMoney").val() == "") {
						  	$(this).css({"color":"#D0D0D0","font-size":"14px","font-weight":"normal"});
				}
			});
				
				
			function keyUpcheck()
			{
				$(this).css({"font-size":"24px","font-weight":"bold","font-family":"Arial"});
			}
			</script>
    <div class="clear"></div>
  </div>
</div>
<!--网站底部-->
<div id="footer" class="ft">
  <div class="ft-inner clearfix">
    <div class="ft-helper clearfix">
      <dl>
         <dt>关于我们</dt>
        <dd><a href="公司简介/home">公司简介</a><a href="管理团队/home">管理团队</a><a href="网站公告/home">网站公告</a></dd>
      </dl>
      <dl>
        <dt>相关业务</dt>
        <dd><a href="invest/investList">我要投资</a><a href="trans/loan/home">我要借款</a></dd>
      </dl>
      <dl>
        <dt>帮助中心</dt>
        <dd><a href="帮助中心/home">新手入门</a><c:choose>
        	<c:when test="${sessionScope.info.user_id==null }">
        		 <a href="trans/PersonalCenter/getPensonalInformation/52555">我的账户</a> 
        	</c:when>
        	<c:otherwise>
        		 <a href="trans/PersonalCenter/getPensonalInformation/${sessionScope.info.user_id }">我的账户</a> 
        	</c:otherwise>
        </c:choose></dd>
      </dl>
      <dl>
        <dt>联系我们</dt>
        <dd><a href="联系我们/home">联系我们</a></dd>
      </dl>
    </div>
    <div class="ft-service">
      <dl>
        <dd>
          <p><strong>400-660-1268</strong><br>
            工作日 9:00-22:00<br>
            官方交流群:<em>12345678</em><br>
            工作日 9:00-22:00 / 周六 9:00-18:00<br>
          </p>
          <div class="ft-serv-handle clearfix"><a class="icon-hdSprite icon-ft-sina a-move a-moveHover" title="SQ金服新浪微博" target="_blank" href="#"></a><a class="icon-hdSprite icon-ft-qqweibo a-move a-moveHover" title="SQ金服腾讯微博" target="_blank" href="#"></a><a class="icon-ft-qun a-move a-moveHover" title="SQ金服QQ群" target="_blank" href="#"></a><a class="icon-hdSprite icon-ft-email a-move a-moveHover mrn" title="SQ金服email" target="_blank" href="mailto:xz@yirenbao.com"></a></div>
        </dd>
      </dl>
    </div>
    <div class="ft-wap clearfix">
      <dl>
        <dt>官方二维码</dt>
        <dd><span class="icon-ft-erweima"><img src="images/code.png" style="display: inline;"></span></dd>
      </dl>
    </div>
  </div>
  <div class="ft-record">
    <div class="ft-approve clearfix"><a class="icon-approve approve-0 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-1 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-2 fadeIn-2s" target="_blank" href="#"></a><a class="icon-approve approve-3 fadeIn-2s" target="_blank" href="#"></a></div>
    <div class="ft-identity">©2017 SQ金服 All rights reserved&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;广东省SQ金服投资管理有限公司&nbsp;&nbsp;&nbsp;<span class="color-e6">|</span>&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://www.miitbeian.gov.cn/">粤ICP备12345678号-1</a></div>
  </div>
</div>
<script src="script/jquery.datetimepicker.js" type="text/javascript"></script>
<script src="script/datepicker.js" type="text/javascript"></script>
</body>
</html>
