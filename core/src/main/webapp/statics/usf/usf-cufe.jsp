<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160427"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <style type="text/css">
        /*monetary items 金融项目*/
        .monetary-items{font-family:Microsoft YaHei;font-size:18px;}
        .banner{position:relative;}
        .monetary-items h2,.monetary-items h3,.monetary-items h4{margin:0;font-family:Microsoft YaHei;}
        .monetary-items ul{max-width:1000px;margin:10px auto;}
        .monetary-items ul li{padding:5px 10px;}
        .monetary-items ul li em{display:inline-block;width:10px;height:10px;border-radius:50%;background:#1BB38C;margin-right:10px;vertical-align: top;margin-top: 10px;}
        .monetary-items ul li em.emno{background:transparent;}
        .monetary-items ul li span{display:inline-block;width:97%;}
        .banner h2{color:#fff;position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);-webkit-transform:translate(-50%,-50%);font-size:40px;margin:0;font-weight:100;}
        .monetary-items h3{background:#1BB38C;border-radius:1000px;color:#fff;font-size:28px;font-weight:100;padding:10px 40px;margin:40px 0 30px;display:inline-block;}
        .monetary-items .p-tit{padding:0 70px;color:#3e3e3e;text-indent:2em;}
        @media (max-width: 768px){.monetary-items{font-size:13px;}
        .banner h2{font-size:14px;line-height:1.6;}
        .monetary-items h3{font-size:13px;}
        .monetary-items ul li em{margin-top:5px;}
        .monetary-items ul li span{width:93%;}
        .monetary-items-table1 p{font-size:12px;}
        .monetary-items .p-tit{padding:0 10px;}
        }
        .monetary-items-table{border:3px solid #1BB38C;max-width:930px;margin:30px auto 0;}
        .monetary-items-table1 p{height:40px;line-height:40px;color:#1BB38C;margin:0;}
        .monetary-items-table1 p em{color:#6a6a6a;}
        .monetary-items-table1 p em,.monetary-items-table1 p span{background:#f4f4f4;width:50%;height:100%;display:inline-block;border-right:1px solid #fff;border-bottom:1px solid #fff;}
        .monetary-items-table2{padding:30px;margin-bottom:30px;}
        .monetary-items-table2 h4,.monetary-items-table2 dl dt{color:#1BB38C;}
        .monetary-items-table2 h4{padding-left:15px;}
        .monetary-items-table2 dl{margin:10px 0;font-size:14px;padding:0 15px;}
        .monetary-items-table2 dt{font-weight:100;margin-bottom:4px;}
        .monetary-items-table2 dd{color:#3e3e3e;}
        @media (max-width: 768px){.monetary-items-table2{padding:10px;}}
        .finance-program-video{position: absolute;  top: 0;  left: 0;  z-index: 1;width: 100%;  height: 100%;}
    </style>

</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<div class="main-wrapper clearfix">
    <!--=====================================left============================================-->
    <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
        <div class="row biography">

        </div>
        <div class="row examRecord">

        </div>
        <%--<div class="row">
            <div class="col-xs-12">
                <h3 class="lead-in">SHOUTOUTS</h3>
            </div>
            <ul class="friend-impression-list col-xs-12">
            </ul>
            <a class="add-impression md-trigger" data-modal="modal-addImpression" href="javascript:void(0);">Add
                Shoutouts</a>
        </div>--%>
    </aside>
    <!--=====================================right============================================-->
    <div class="content-container col-lg-9 col-md-9 col-xs-12">
        <div class="monetary-items clearfix">
            <div class="banner col-lg-12 col-xs-12 text-center"><img
                    src="/images/monetary-items-banner.jpg">
                <h2>旧金山大学金融硕士研究生预科班<br>
                    ——与中央财经大学合作项目</h2>
            </div>
            <div class="col-lg-12 col-xs-12">
                <div class="text-center">
                    <h3>旧金山大学金融专业介绍</h3>
                </div>
                <p class="p-tit">
                    旧金山大学的硕士研究生金融分析课程在全球所有的知名高校中都是顶尖的。其培养学生运用经济学方法，量化分析法，财会和其它金融计算方法来精确评估金融资产的价值，科学管理投资组合。从而培养金融投资专业人才。它是注册金融分析师协会（CFA）特邀的一项官方合作项目。学院自2006年起，开办金融分析硕士研究生项目，并针对注册金融分析师资格考试，与之对应，且循序渐进地讲授所有涵盖考试内容的课程及其要点。金融分析硕士研究生项目的入门门槛是很高的。竞争异常激烈。只有少于四分之一的学生能够获得学习此课程的机会。录取条件苛刻。对托福和GMAT/GRE成绩的要求更高。研究生录取要求学生具有经济专业，金融专业和财会专业的基础。为期18个月的金融研究生课程，分为每年春秋两季开班（每年两期招生），课程不间断，没有假期，包括中国的春节。</p>
                <div class="monetary-items-table1 monetary-items-table clearfix text-center">
                    <div class="col-lg-7 col-xs-12">
                        <p><span>学期1</span><span>学期2</span></p>
                        <p><span>10单元</span><span>7单元</span></p>
                        <p><em>微观经济学</em><em>股票估值</em></p>
                        <p><em>金融机构概论</em><em>固定收益1</em></p>
                        <p><span>企业融资</span><em>东海岸金融机构 实习</em></p>
                        <p><span>宏观经济学</span><em>西海岸企业或政府科研项目</em></p>
                        <p><span>财务报表分析</span><em>固定收益2</em></p>
                    </div>
                    <div class="col-lg-5 col-xs-12">
                        <p><span>学期3</span><span>学期4</span></p>
                        <p><span>10单元</span><span>9单元</span></p>
                        <p><em>衍生工具1</em><em>资本市场</em></p>
                        <p><em>行为金融学</em><em>金融计量经济学</em></p>
                        <p><em>微观经济学</em><em>道德与金融</em></p>
                        <p><em>衍生工具2</em><em>另类投资</em></p>
                        <p><em>国际金融</em><em>投资组合管理</em></p>
                    </div>
                </div>
                <div class="text-center">
                    <h3>旧金山大学与中央财经大学合办预科班介绍</h3>
                </div>
                <div class="text-center">
                    <div class="video-img video-container">
                        <img materialsrc="//kw-cdn.kanwokanwo.com/schoolvideo/SFUFinanceProgram.mp4" src="/images/monetary-items-video.jpg">
                        <i class="glyphicon glyphicon-play-circle"></i>
                        <div class="finance-program-video"></div>
                    </div>
                </div>
                <ul>
                    <li><em class="emno"></em><span>很多年来，大批工程，物理，数学以及类似专业的优秀理科生，因为没有经济专业，财会专业，金融专业的基础而被拒之门外。因此，我们专门为上述优秀的学生在中国安排了一项硕士研究生基础课程，使他们可以顺利地进入旧金山大学金融研究生院，参加金融分析硕士研究生课程的学习。</span>
                    </li>
                    <li><em class="emno"></em><span>金融分析预科班将在北京中央财经大学授课。通过三个半月的学习，掌握金融财会，微观经济学，企业融资，金融市场四门课程。每一个基础组合模块由旧金山大学取得注册金融分析师资质的教授和中央财经大学的教授交替授课。每个模块授课时长为三个周末（周六日上课）</span>
                    </li>
                    <li><em></em><span>学生的所有用书及学习资料由校方免费提供,我们针对托福成绩欠佳的学生提供免费的强化培训</span></li>
                    <li><em></em><span>所有参加此项目学习的学生，必须完成各门课程的学习。无论其是否有过类似课程的学习经历。课程结束后，全体学生要通过涵盖所有研究生基础课程的入学资考试。没有通过考试的学生，在下一期预科班考试时可以免费补考。</span>
                    </li>
                    <li><em></em><span>参加预科班学习的学生，在课程结束后，通过由授课教授安排的考试，将被保送至旧金山大学金融研究院参加为期18个月的金融硕士研究生学习。被旧金山大学金融研究院录取的学生，可在一年内任意选择两个不同入学时间的其中一个入学。旧金山大学的金融分析硕士学位，通常要求学生完成18门课程，修满35个学分。</span>
                    </li>
                </ul>
                <div class="monetary-items-table2 monetary-items-table clearfix">
                    <div class="col-lg-7 col-xs-12">
                        <h4>授课讲师(USF)</h4>
                        <dl>
                            <dt>金融财会</dt>
                            <dd>John Veitch</dd>
                        </dl>
                        <dl>
                            <dt>金融市场</dt>
                            <dd>John Veitch(美国旧金山大学，金融研究院—院长。于美国西北大学获得博士学位，注册金融分析师CFA)</dd>
                        </dl>
                        <dl>
                            <dt>微观经济基础</dt>
                            <dd>Lau Man-Lui(美国旧金山大学教授，于康奈尔大学获得博士学位)</dd>
                        </dl>
                        <dl>
                            <dt>商业融资</dt>
                            <dd>John Gonzales(美国旧金山大学教授，于威斯康辛大学获得博士学位)</dd>
                        </dl>
                    </div>
                    <div class="col-lg-5 col-xs-12">
                        <h4> 授课讲师 (CUFF)</h4>
                        <dl>
                            <dt>金融财会</dt>
                            <dd>温健 (于美国佐治亚大学获得博士学位)</dd>
                        </dl>
                        <dl>
                            <dt>金融市场</dt>
                            <dd>李建栋 (毕业于清华大学工程系，<br>
                                于美国德雷赛尔大学获得博士学位)
                            </dd>
                        </dl>
                        <dl>
                            <dt>微观经济基础</dt>
                            <dd>黄瑜琴 (于香港大学获得博士学位)</dd>
                        </dl>
                        <dl>
                            <dt>商业融资</dt>
                            <dd>王汀汀 (于北京大学获得博士学位)</dd>
                        </dl>
                    </div>
                </div>
                <ul>
                    <li><strong>最低录取条件：</strong></li>
                    <li><em></em><span>完整地参加了所有课程的学习</span></li>
                    <li><em></em><span>通过了结业考试</span></li>
                    <li><em></em><span>托福网考（IBT）达到92分及以上。雅思6.5分及以上</span></li>
                    <li><em></em><span>GMAT成绩达到600分，或GRE成绩达到316分。数学成绩在80%以上（所有学生中跻身前20%）</span></li>
                </ul>
                <ul>
                    <li><strong>2016夏季预科班开课时间：</strong>2016年7月29─2016年11月8日（09月30日、10月28日无课）<br>
                        <strong>申请程序：</strong>需在2016年7月15日前提出申请
                    </li>
                    <li><em></em><span>大学成绩单</span></li>
                    <li><em></em><span>最新托福（最低75分）或雅思(最低6分)成绩</span></li>
                    <li><em></em><span>最新GMAT或GRE成绩（尽可能提供）</span></li>
                    <li><em></em><span>将申请材料寄送至旧金山大学驻北京招生办 注明：金融预科申请<br>
            <strong>地址</strong>：北京市朝阳区东三环北路丙2号天元港中心A座1501室 邮编：100027</span></li>
                    <li>
                        <em class="emno"></em><span>申请资料齐全，经校方审核后，通常会在一周内获得录取通知书（申请无需任何费用）。收到录取通知书的学生需要先行支付10%的保证金，以确保我们为其提供的入学名额。 <br>
            <strong>学习费用：</strong>学费为一万美元整。包括：学费，各门课程书费和考试资料费用（不包括食宿费）。完成了预科课程，且符合其它要求（托福或雅思，GMAT或GRE达到最低录取分数）的学生，将被旧金山大学硕士金融分析专业录取，并将获得等同于6学分研究生课程所需学费的奖学金。因此节省在美国的学习费用，所以预科学习的实际费用折算后少于人民币一万元。</span>
                    </li>
                </ul>
                <div class="text-center">
                </div>
                <div class="text-center">
                    <h3>报名电话：+86&nbsp;13581647947</h3>
                    <br/>
                    <a href="//kw-cdn.kanwokanwo.com/schoolmaterial/SFUFinanceProgram.pdf" target="_blank"><h3>下载招生简章</h3></a>
                </div>
            </div>
        </div>
    </div>

    <script src="/js/video-popup.js?version=20160512"></script>
</div>
    <%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script src="/js/video.js?201603229"></script>
<script src="/js/modernizr.custom.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/mn_test/viewProfile.js?20160427"></script>
<script src="/js/jquery-rebox.js?201603229"></script>

<script type="text/template" id="description-material-layout-template">
    <div class="description"></div>
    <div class="materialList"></div>
    <div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>
</script>

<script type="text/template" id="description-template">
    <@if(typeof description == 'undefined'){}else if(description == ''){@>
    <div class="col-lg-8 col-xs-12 disabled ">
        <div class="r-line"><a class="add-description modalLink text-center"><i
                class="glyphicon glyphicon-align-left"></i><strong>Great school!</strong></a></div>
    </div><@}else{@>
    <div class="col-lg-8 col-xs-12 disabled">
        <div class="media-item-description"><p><@=description@></p></div>
    </div><@}@>
</script>
<div class="md-effect-1 reveal-modal add-friend-impression" id="modal-connect">
            <div class="md-content">
                <h4 class="lead-in">CONNECT</h4>
                <label>Connect with me on social:</label>
                <div class="icon_lists">
                    <a href="https://twitter.com/usfca">
                            <i class="icon iconfont icon-twitter"></i>
                            @usfca</a><br/>
                    <a href="https://www.facebook.com/University.of.San.Francisco">
                            <i class="icon iconfont icon-facebook"></i>
                            @University.of.San.Francisco</a><br/>
                    <a href="https://www.facebook.com/usfca">
                            <i class="icon iconfont icon-gerenzhuyexiangji"></i>
                            @usfca</a><br/>
                    </div>
                <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
            </div>
        </div>


<script type="text/template" id="material-template">
    <@if(type == 'IMG'){@>
    <div class="edit-hover"><a class="zoom" title="<@=title@>"
                               href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img
            src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
    </div>
    <@}else if(type == 'VIDEO'){@>
    <div class="edit-hover">
        <div class="video-img video-container">
            <@if(status == 'NORMAL'){@>
            <img materialSrc="<@=materialSrc@>"
                 src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <@}else if(status == 'TRANSCODE'){@>
            <img src="/images/transcoding_324.324.jpg"/>
            <@}@>
            <i class="glyphicon glyphicon-play-circle"></i>
            <div class="masking"></div>
        </div>
    </div>
    <@}else if(type == 'DOC'){@>
    <div class="edit-hover"><a href="<@=materialSrc@>" target="_blank" class="edit-document-item text-center"><i
            class="glyphicon glyphicon-list-alt"></i>
        <p class="edit-document-item-title"><@=title@></p>
        <small>Document</small>
    </a></div>
    <@}@>
</script>

<script type="text/template" id="activityTagList_template">
    <ul class="activity-item">
        <li class="col-lg-2 col-xs-4 on ">
            <p><@=activityTags[activityTags.length-1]@></p>
            <span>（<@=count[activityTags.length-1]@>）</span>
        </li>

        <@ for(var i = 0;i < activityTags.length-1;i++){ @>
        <li class="col-lg-2 col-xs-4 "
        <@if(count[i] == 0){@> style="display:none" <@ } @> >
        <p><@=activityTags[i]@></p>
        <span>（<@=count[i]@>）</span>
        </li>
        <@ } @>
    </ul>
</script>

<script type="text/template" id="activityLayout_template">
    <div class="activityDetail clearfix"></div>
    <div class="columns-info">
        <div class="bg-gray bg-no">
            <div class="activityDescriptionMaterial clearfix media-item"></div>
        </div>
    </div>
    </div>
</script>

<script type="text/template" id="activityDetail_template">
    <section>
        <div class="clearfix">
            <div class="col-xs-12">
                <header>
                    <div class="activity-title">
                        <h3><@=title@></h3>
                        <div class="activity-age">
                            <@if(startDate){@><@=startDate@> — <@}@><@if(!endDate){@>Now<@}else{@><@=endDate@><@}@>
                        </div>
                    </div>
                    <ul class="activity-item clearfix">
                        <@ for(var i = 0;i < activityTagList.length;i++){ @>
                        <li class="col-lg-2 col-xs-4"><p><@= App.activityTags[parseInt(activityTagList[i].title)]@></p>
                        </li>
                        <@ } @>
                    </ul>
                </header>
            </div>
        </div>
    </section>
</script>

<script type="text/template" id="myVideo-template">
    <@if(status == 'NORMAL'){@>
    <video class="video-js vjs-default-skin" controls preload="none" poster="<@=videoPreviewImg@>" data-setup="{}">
        <source src="<@=materialSrc@>" type='video/mp4'/>
    </video>
    <@}else if(status == 'TRANSCODE'){@>
    <img src="/images/transcoding.png"/>
    <@}@>
</script>

<script type="text/template" id="biography-template">
    <div class="clearfix">
        <div class="col-xs-12 text-center">
            <@if(avatarUrl){@><img width="200" height="200"
                                   src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
            <@}else{@><img width="200" height="200" src="/images/defaultAdmissionAvatar.jpg"><@}@>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <p>
                <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
            </p>
        </li>
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
        <li>
            <i class="glyphicon glyphicon-user"></i>
            <p><span>
            <@if(position){@><@=position@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        </li>
        <li>
            <i class="glyphicon glyphicon-link"></i>
            <p><span>
            <@if(webSite){@>
                <a href="<@=webSite@>">Our Website</a>
            <@}else{@>
                N/A
            <@}@>
            </span></p>
        </li>
        <li id="examRecord">
        </li>
    </ul>
    <br/><br/><a href="javascript:;" class="my-connect md-trigger" data-modal="modal-connect">联系方式</a>
</script>

<script type="text/template" id="remarkList_template">
    <@ _.each(remarkMap, function(remark,title,index){ @>
    <li><@=title@>（<@=remark.length@>）
        <div class="tips text-center">
            <div class="clearfix" style=" width: 282px;">
                <div class="randomColor" style="width: auto;float: left">
                    <@ _.each(remark, function(item,index){ @>
                    <dl>
                        <dt><a href="/<@=item.fromPublicUri@>" target="_blank"><img
                                src="<@=item.fromAvatar == '' ?'/images/defaultavatar.jpg':item.fromAvatar@>"></a></dt>
                        <dd><a href="/<@=item.fromPublicUri@>" target="_blank"><@=item.fromPublicUri@></a></dd>
                    </dl>
                    <@ }) @>
                </div>
            </div>
    </li>
    <@ }) @>
</script>
<script type="text/template" id="biography-template">
    <div class="clearfix">
        <div class="col-xs-12 text-center">
            <@if(avatarUrl){@><img width="200" height="200" src="<@=avatarUrl.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
            <@}else{@><img width="200" height="200" src="/images/defaultAdmissionAvatar.jpg"><@}@>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <p>
                <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
            </p>
        </li>
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
        <li>
            <i class="glyphicon glyphicon-user"></i>
            <p><span>
            <@if(position){@><@=position@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        </li>
        <li>
            <i class="glyphicon glyphicon-link"></i>
            <p><span>
            <@if(webSite){@>
                <a href="<@=webSite@>">Our Website</a>
            <@}else{@>
                N/A
            <@}@>
            </span></p>
        </li>
        <li id="examRecord">
        </li>
    </ul>
    <br/><br/><a href="javascript:;" class="my-connect md-trigger" data-modal="modal-connect">Connect</a>
    </script>

<script type="text/template" id="remarkList_template">
    <@ _.each(remarkMap, function(remark,title,index){ @>
    <li><@=title@>（<@=remark.length@>）
        <div class="tips text-center">
            <div class="clearfix" style=" width: 282px;">
                <div class="randomColor" style="width: auto;float: left">
                <@ _.each(remark, function(item,index){ @>
                <dl>
                    <dt><a href="/<@=item.fromPublicUri@>" target="_blank"><img src="<@=item.fromAvatar == '' ?'/images/defaultavatar.jpg':item.fromAvatar@>"></a></dt>
                    <dd><a href="/<@=item.fromPublicUri@>" target="_blank"><@=item.fromPublicUri@></a></dd>
                </dl>
                <@ }) @>
            </div>
        </div>
    </li>
    <@ }) @>
</script>

<script type="text/javascript">
    $(function () {
        var profileData = {
            "admissionProfileId": "662f7870-0bf8-4495-8426-6ea5423b2ec2",
            "biography": {
                "avatarUrl": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/28051892979951775.png",
                "currentSchool": "UNIVERSITY OF SAN FRANCISCO",
                "location": "CA, USA ",
                "name": "UNIVERSITY OF SAN FRANCISCO",
                "position": "Administrators",
                "webSite": "https://www.usfca.edu/"
            },
            "email": "usf@kanwokanwo.com",
            "introductionVideo": {
                "materialId": "faffaba8-ee9f-49e6-b0e4-171e20fe1b0a",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/exploretheuniversityofsanfranciscoedu80558327955701518055834547824642.mp4",
                "seq": 0,
                "status": "NORMAL",
                "title": "",
                "type": "VIDEO",
                "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/exploretheuniversityofsanfranciscoedu80558327955701518055834616584623.jpg"
            },
            "myLinks": {
                "linkEmail": "",
                "linkFacebook": "University.of.San.Francisco",
                "linkInstagram": "usfca",
                "linkTwitter": "usfca"
            },
            "mySchool": {
                "description": "At USF, we dedicate ourselves in bringing the best to our students through the most acceptable way. Located in San Fran, it is our mission to enlighten each and every one of our Dons like the California sun!",
                "materials": [{
                    "materialId": "8b58ecee-7811-4187-b04f-eb8ca183873e",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/18051938476073479.jpg",
                    "seq": 0,
                    "status": "NORMAL",
                    "title": "USF PHOTO",
                    "type": "IMG",
                    "videoPreviewImg": ""
                }, {
                    "materialId": "48053667-43be-4542-9c3b-6ef7b85ead36",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/68051938757059963.jpg",
                    "seq": 1,
                    "status": "NORMAL",
                    "title": "USF PHOTO",
                    "type": "IMG",
                    "videoPreviewImg": ""
                }, {
                    "materialId": "f1cced23-940a-48dc-b7de-a9fc0ed9daa8",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/78051938862777620.jpg",
                    "seq": 2,
                    "status": "NORMAL",
                    "title": "USF PHOTO",
                    "type": "IMG",
                    "videoPreviewImg": ""
                }, {
                    "materialId": "2e397da7-2236-4361-b797-562077305c46",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/38051938569205783.jpg",
                    "seq": 3,
                    "status": "NORMAL",
                    "title": "USF PHOTO",
                    "type": "IMG",
                    "videoPreviewImg": ""
                }, {
                    "materialId": "371d26d7-6e8d-4b6c-888f-81efe538e1f9",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/usfcampustour80561459271031388056155011949417.mp4",
                    "seq": 4,
                    "status": "NORMAL",
                    "title": "",
                    "type": "VIDEO",
                    "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/usfcampustour80561459271031388056155107790928.jpg"
                }, {
                    "materialId": "07d78bf0-36a7-483f-a3ba-d165c42832ae",
                    "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/lifeinthecityofsf1074003478688759210740041643236217.mp4",
                    "seq": 5,
                    "status": "NORMAL",
                    "title": "",
                    "type": "VIDEO",
                    "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/lifeinthecityofsf1074003478688759210740041691793276.jpg"
                }]
            },
            "origPublicUri": "universityofsanfrancisco",
            "publicUri": "universityofsanfrancisco",
            "userId": 131
        };
        if (!profileData.mySchool.materials) {
            profileData.mySchool.materials = [];
        }
        var jsonResult = {'myStory': profileData.mySchool};
        //var jsonResult = {};
        var contentViews = [];
        //判断不显示为空的内容
        //$.each(jsonResult, function (index, item) {
        //    if (!item.description == "" || (item.materials && item.materials.length != 0)) {
        //        contentViews[index] = new App.DescriptionMaterialSimpleView({
        //            model: new App.Content(item),
        //            el: "." + index + "Media"
        //        });
        //        contentViews[index].render();
        //    }
        //});

        var myVideoJson = profileData.introductionVideo;
        //new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = profileData.biography;
        new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();
        App.RemarkDict
        var remarkJson = [];
        var remarkDict = new App.RemarkDict({remarkList: remarkJson});
        new App.RemarkListView({model: remarkDict, el: ".friend-impression-list"}).render();
        $("#submitImpressionBtn").on("click", function () {
            var that = remarkDict;
            var impressionContent = $("#impression").val();
            if (currentUserStudentProfileId == "") {
                alert("please login");
                return;
            }
            if ($.trim(impressionContent) != "") {
                if ($.trim(currentUserStudentProfileId) == $.trim(targetStudentProfileId)) {
                    alert("you can not fill impression for yourself");
                    return;
                }
                $.ajax({
                    type: "POST",
                    url: '/admission/profile/addRemark',
                    data: {
                        "fromUser": currentUserStudentProfileId,
                        "toUser": targetStudentProfileId,
                        "impression": impressionContent
                    },
                    dataType: 'json',
                    success: function (data) {
                        if (data.status == 1) {
                            that.addRemark(data.data);
                        }
                    }
                });

            } else {
                alert("please fill impression");
            }
            //remarkDict.saveRmark();
        });
        var activitiesJsonResult = [{
            "activityId": "288a4d23-9420-4688-9d73-2034b8622f52",
            "activityTagList": [],
            "admissionProfileId": "662f7870-0bf8-4495-8426-6ea5423b2ec2",
            "description": "USF competes in the NCAA Division I and is a charter member of the West Coast Conference, along with local rivals Santa Clara University and Saint Mary's College of California. Sports offered are men’s and women's basketball, cross country, golf, soccer, tennis, track and field, as well as men’s baseball and women's volleyball and sand volleyball. USF’s mascot is the Don and its colors are green and gold.",
            "endDate": "",
            "materials": [{
                "materialId": "0f07faf9-6b47-4abb-a1f3-36eddf6ed093",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/118052011513226176.jpg",
                "seq": 0,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "34a709d7-6e7e-408a-8b44-07e4ae72fcea",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/128052011634350747.png",
                "seq": 1,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "71fe0e0b-b907-4b1a-937a-f4ced96e517c",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/138052011759434316.jpg",
                "seq": 2,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "88717815-5150-4491-8632-7a7c3bcdd00b",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/148052011906225949.jpg",
                "seq": 3,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "fee091a0-36d5-4905-a2c4-87197f11208b",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/158052012040883667.jpg",
                "seq": 4,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "1ff07dc7-9b0e-4109-9c1c-3141271b39bc",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/168052012156206375.jpg",
                "seq": 5,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "5697fc6d-498d-41f6-b858-87761f2f036f",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/178052012287336943.jpg",
                "seq": 6,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }],
            "seq": 0,
            "startDate": "",
            "title": "Sports"
        }, {
            "activityId": "bfc8c92e-afbb-4a17-9a6a-b389ac85fb28",
            "activityTagList": [],
            "admissionProfileId": "662f7870-0bf8-4495-8426-6ea5423b2ec2",
            "description": "Perform with the College Players, ask tough questions for the student newspaper, set up a tent on the Point Reyes peninsula – find a community on campus that speaks to you. At USF, you can participate in dozens of student clubs and organizations ranging from media, academic, service, cultural, and Greek. Build your resume, make new friends, develop skills, be active, push limits, and get involved.",
            "endDate": "",
            "materials": [{
                "materialId": "ad2ca4c7-6f1b-4ce4-9da0-c1d6811776f7",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/218052059549120107.jpg",
                "seq": 0,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "4446e636-bd28-4ffe-abb5-d807f8ea7fd4",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/228052059663218532.jpg",
                "seq": 1,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "81a972f3-7634-415f-ab3c-7f6bccbdfdba",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/238052059775117360.jpg",
                "seq": 2,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "e32eb3a0-2c50-4e7f-8782-38f5b4acb274",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/248052059882620060.jpg",
                "seq": 3,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }, {
                "materialId": "1aea7d49-8781-431d-9331-11edb6c1a57e",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/258052060022853583.jpg",
                "seq": 4,
                "status": "NORMAL",
                "title": "USF PHOTO",
                "type": "IMG",
                "videoPreviewImg": ""
            }],
            "seq": 1,
            "startDate": "",
            "title": "Clubs"
        }, {
            "activityId": "b761cc6b-23c8-46cb-99a8-425d31baa683",
            "activityTagList": [],
            "admissionProfileId": "662f7870-0bf8-4495-8426-6ea5423b2ec2",
            "description": "USF GaoKao Program ; USF Finance Program",
            "endDate": "",
            "materials": [{
                "materialId": "079d2b9b-008d-4e82-a856-d21f1b47a9df",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/doestofelscorematter1074013238086421210740133185609363.mp4",
                "seq": 0,
                "status": "NORMAL",
                "title": "",
                "type": "VIDEO",
                "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/doestofelscorematter1074013238086421210740133246946713.jpg"
            }, {
                "materialId": "add24507-ab53-4d61-b3a0-e80cdd2cd5fa",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/sfufinanceprogram1074021538819280010740220997677320.mp4",
                "seq": 1,
                "status": "NORMAL",
                "title": "",
                "type": "VIDEO",
                "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/sfufinanceprogram1074021538819280010740221052779273.jpg"
            }, {
                "materialId": "91a028d2-3461-45c5-9abe-eb10d8dbbe31",
                "materialSrc": "//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/sfugaokaoprogram1074054816203929210740560257206958.mp4",
                "seq": 2,
                "status": "NORMAL",
                "title": "",
                "type": "VIDEO",
                "videoPreviewImg": "//focusedu.oss-cn-hangzhou.aliyuncs.com/images/sfugaokaoprogram1074054816203929210740560329558351.jpg"
            }],
            "seq": 2,
            "startDate": "",
            "title": "Admission Information"
        }];
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList});
        activityModuleView.render();

        currentUserStudentProfileId = "";
        if (!currentUserStudentProfileId) {
            currentUserStudentProfileId = "";
        }
        targetStudentProfileId = "662f7870-0bf8-4495-8426-6ea5423b2ec2";

        $('.materialList').rebox({selector: '.zoom'});
    });
</script>
</html>
