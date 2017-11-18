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
<link href="css/about.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript" src="script/common.js"></script>
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
        <li> <a href="invest/investList" class="">我要投资</a> </li>
        <li> <a href="trans/loan3/home" class="">我要贷款</a> </li>
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
<!--关于我们-->
<div class="bg">
  <div class="contain" id="tabs" style="margin:0 auto;">
    <div class="text-nav">
      <ul class="clearfix">
        <li> <a class="text-link" href="网站公告/home">网站公告</a> </li>
        <li> <a class="text-link" href="媒体报道/home">媒体报道</a> </li>
        <li> <a class="text-link" href="公司简介/home">公司简介</a> </li>
        <li> <a class="text-link" href="管理团队/home">管理团队</a> </li>
        <li> <a class="text-link" href="合作伙伴/home">合作伙伴</a> </li>
        <li> <a class="text-link" href="团队风采/home">团队风采</a> </li>
        <li> <a class="text-link" href="法律政策/home">法律政策</a> </li>
        <li> <a class="text-link" href="法律声明/home">法律声明</a> </li>
        <li> <a class="text-link" href="资费说明/home">资费说明</a> </li>
        <li class="selected"> <a class="text-link" href="招贤纳士/home">招贤纳士</a> </li>
        <li> <a class="text-link" href="联系我们/home">联系我们</a> </li>
      </ul>
    </div>
    <div class="text-box">
			<div class="text-content" id="text-content">
				<h1 class="title">招贤纳士</h1>
				<p class="mt10 cn_line">
					找对平台，跟对团队！你实现了吗？SQ金服由实力雄厚的股东联合金融、技术与法律领域的专业团队共同组建，资源条件充足，支援力量强大，现为福建地区首批专业从事“金融服务”的公司。目前因业务发展需要，面向社会寻觅有思想、有魄力，乐于从事互联网金融事业的有志青年，我们倡导“以人为本的家园文化”，您的加入，将和我们一起见证公司未来广阔的发展前景。公司工作环境优雅，薪水待遇优于同行业水平，未来发展及晋升空间广阔。欢迎金融界、法律界和网络技术人才的加盟！
				</p>
				<ul class="clearfix join">
					<li>
						<div class="title">
							<img src="images/join_01.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">客服主管（数名）</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.参与客服部门的规划管理工作；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.负责在线、400电话以及现场客户接待工作；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.负责处理客户投诉、咨询、意见反馈工作并对相关问题及时跟进处理；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.负责对部门员工进行业务培训和工作指导，积极提高员工综合素质和服务意识；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.对部门的业绩指标负责，并负责排班预测和现场管理；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">6.定期制作报表和业绩汇总，并从中分析问题，给出改进方案；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">7.营造高效、轻松、和谐的工作环境，成为公司企业文化的主要推进者；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">8.领导交办的其他工作。</span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.大专以上学历，1年以上大型呼叫中心或客服中心工作经验，具有一定的管理经验，熟悉呼叫中心业务指标及规范；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.普通话标准，声音甜美，优秀的语言表达能力和沟通能力；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.诚实守信，品行端正，服从领导工作安排；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.性格开朗，有责任心，具有良好的服务意识和管理能力，工作积极进取；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.较强的执行力，能够按时按质完成团队的业绩指标，能承受一定的工作压力。</span>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_02.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">客服专员（数名）</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.通过电话/在线解答客户咨询，提供服务，对客户的需求进行了解和收集，根据客户需求推荐相关产品及服务；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.受理客户投诉、建议及意见等，做好记录及反馈，并跟踪处理结果；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.收集客户及相关信息资料，建立并逐步完善客户信息数据库；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.维护会员客户关系，提高客户满意度及忠诚度；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.协助上司和团队共同实现团队目标；</span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.大专及以上学历，1年以上大型呼叫中心工作经验，熟悉呼叫中心业务指标及规范，熟练操作呼叫中心系统；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.普通话标准，声音甜美，优秀的语言表达能力和沟通能力；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.诚实守信，品行端正，服从领导工作安排；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.良好的服务意识、耐心和责任心，工作积极主动；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.较强的执行力，能够按时按质完成团队的业绩指标，能承受一定的工作压力。</span><br>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_03.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">JAVA程序员（数名）</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.负责公司网站平台,内部系统策划、设计、维护；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.负责网站新功能、新版块的程序开发；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.负责网站数据库管理；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.负责协助网站的内容编辑；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.协助网站各项活动实施；</span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.学历不限，具有1年以上JAVA开发经验。</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.熟悉 mysql，包括数据库设计,速度优化。</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.熟悉JavaScript，ajax，精通Div+CSS。</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.熟悉linux操作系统服务器管理。</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.具有较强的团队意识，高度的责任感，对工作积极严谨，勇于承担压力。</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">6.有良好的沟通和学习能力、有较强的团队协作能力以及快速解决问题的能力。</span><br>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_04.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">网络推广、seo高级专员</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.网站SEO优化方案制定及执行；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.编写原创文章，对更新文章进行搜索引擎排名或营销推广，能主动开发关键词；分析网站及各频道的关键词解决方案，监控和研究竞争对手及其他网站相关做法，对网站提出合理的调整建议；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3. 流量监测、效果分析、站内优化、外链建设，增加网站收录，提升效果排名；</span><br>
                                                        &nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.百度、360、搜搜、搜狗、谷歌等搜索引擎账户内关键词创意、关键词排名调整；</span><br>
                                                        &nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.协同其他同事，策划、推广和执行线上活动； </span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.学历不限，有1年以上SEO/SEM实操经验，熟悉SEO规则、原理、做法和效果评估标准，具备网站基础数据分析能力；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.具有较强文案策划能力、撰写个人博客或推广软文者优先；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.了解HTML、Javascript、JSP、ASP、PHP、CSS等页面语言，熟悉dedecms优先</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.熟悉SEO部署技巧，善于利用多种形式迅速提升网络人气。如软文、论坛、博客、社区、交换链接、EDM、活动营销、病毒式营销策略等网络推广；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.了解百度质量度得分的主要影响因素，优化质量度。</span><br>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_05.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">市场客户经理 (数名)</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.负责市场调查和客户开拓，能根据市场及客户需求设计相关金融产品及营销推广计划；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.与潜在客户群建立良好的沟通渠道，能发现客户需求，维护客户关系；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.扩大和提高公司的知名度和影响力。</span><br>
						</p>
						<p>

							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.学历不限，熟悉本地市场，具有较好的客户资源和人脉关系；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.有1年以上银行、保险、证券、小贷公司、担保公司工作经验者优先；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.具备良好的人际交往能力、沟通协调能力、营销活动策划能力和组织协调能力；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.了解主流互联网营销方式，电子商务或市场营销专业者优先；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.具备较强的学习能力，能独立完成分配工作；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">6.热爱小额信贷和互联网金融行业，有长期在公司发展的意愿。</span><br>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_06.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">金融产品经理</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.专门负责行业研究及市场调查，能根据客户需求开发适合的金融产品；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.能根据公司行业发展趋势、同行发展变化提出前瞻性的意见或建议；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.熟悉银行对公、对私金融产品及业务流程，熟悉P2P行业现状，熟悉市场及客户需求。</span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.本科以上学历，金融或经济类专业，年龄、户籍不限；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.具有三年以上银行、保险、证券、P2P及相关金融行业工作经验者优先；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.语言表达能力强，文字功底好，能独立完成行业调查、撰写行业分析报告；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.请携带金融产品研发报告应聘，待遇15000元/月以上，具体面议。</span><br>
						</p>
					</li>
					<li>
						<div class="title">
							<img src="images/join_07.jpg" class="fl" style="float:left">
							<span style="line-height:34px;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">项目风险经理 (多名)</span>
						</div>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">岗位职责:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.审查借款人的资质及申请资料，能独立判断信用风险；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.在授权范围内独立审批借款人的借款申请；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.能对贷款审批流程提出建设性意见建议，制定信用审批标准；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.参与信贷新产品设计、风控流程管理和风险控制措施的制定。</span><br>
						</p>
						<p>
							<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:18px;">任职资格:</span>
						</p>
						<p class="cn_line" style="text-indent:0;">
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">1.大专及以上学历，金融、经济、数学、社会学、心理学相关专业；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">2.有1年以上金融机构风险管理领域从业经历；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">3.工作积极主动，认真负责，具高度的工作热情和团队合作精神；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">4.为人正直、诚信，无不良信用记录；</span><br>
							&nbsp;&nbsp;&nbsp;<span style="line-height:2;">5.具有较强的开拓进取精神，适应公司快速发展的环境。</span><br>
						</p>
					</li>
				</ul>
				<div class="join_end">
					<p class="cn_line" style="text-indent:0;">
						<span style="line-height:2;font-family:Microsoft YaHei;color:#0aaae1;font-size:24px;">热诚欢迎有志青年加盟！共创互联网金融宏伟蓝图。</span>
						<br>
						<span style="line-height:2;">如果您对我们的事业感兴趣，请将您的个人简历发送到人力资源部邮箱</span><span style="line-height:2;color:#0aaae1;">hr@sqjinfu.com</span><span style="line-height:2;">，我们将尽快与您联系。</span>
					</p>
				</div>
			</div>
		</div>
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
</body>
</html>
