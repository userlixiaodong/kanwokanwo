<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <link rel="stylesheet" type="text/css" href="/style/frame.css?20160329"/>
    <link rel="stylesheet" type="text/css" href="/style/public.css?20160330"/>
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <script src="/js/video.js?201603229"></script>
    <script src="/js/jquery-2.2.1.min.js"></script>
    <script src="/js/modernizr.custom.js"></script>
    <style type="text/css">
         .title-jiayisong strong {display: block;font-size: 20px;}
         .title-jiayisong p {line-height: 24px;}
    </style>
</head>
<body>
<script src="/js/jquery.zclip.js"></script>
<script src="/js/modalEffects_jquery.js"></script>

<%@include file="/WEB-INF/views/common/top.jsp" %>

<div class="main-wrapper clearfix">
        <!--=====================================left============================================-->
        <aside class="sidebar-container col-lg-3 col-md-3 col-xs-12">
            <div class="row biography">

            </div>
            <div class="row examRecord">

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h3 class="lead-in">SHOUTOUTS</h3>
                </div>
                <ul class="friend-impression-list col-xs-12">
                </ul>
                <a class="add-impression md-trigger" data-modal="modal-addImpression" href="javascript:void(0);">Add Shoutouts</a>
            </div>
        </aside>
        <!--=====================================right============================================-->
        <div class="content-container col-lg-9 col-md-9 col-xs-12">
            <div class="my-story-container">
                 <div class="row">
                     <div class="clearfix">
                       <section class="col-xs-12">
                         <h1>MY INTERVIEW</h1>
                         <div class="media-item flex-video text-center">
                           <video class="video-js vjs-default-skin" controls="" preload="none" poster="//kw-cdn.kanwokanwo.com/images/songjiayiinterView.png" data-setup="{}">
                             <source src="//kw-cdn.kanwokanwo.com/videos/songjiayi_interview.mp4" type="video/mp4">
                           </video>
                         </div>
                         <div class="title-jiayisong"> <strong>KEE Score：9</strong> <strong>Percentile：97%</strong>
                           <p>* KEE: the Kanwokanwo English Evaluation</p>
                         </div>
                       </section>
                     </div>
                   </div>
                <div class="row">
                    <div class="clearfix">
                        <section class="col-xs-12">
                            <h1>MY VIDEO</h1>
                            <div class="media-item flex-video myVideoMedia text-center">
                            </div>
                        </section>
                    </div>
                </div>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY STORY</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix myStoryMedia media-item">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>HONORS</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray">
                            <div class="clearfix honorMedia media-item">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY ACTIVITIES</h1>
                        </div>
                    </div>
                    <div id="actList">
                    </div>
                </div>
                <div class="row">
                    <div class="clearfix">
                        <div class="col-xs-12">
                            <h1>MY PORTFOLIO</h1>
                        </div>
                    </div>
                    <div class="columns-info">
                        <div class="bg-gray bg-no">
                            <div class="clearfix portfolioMedia media-item">
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </div>
    <div class="md-effect-1 reveal-modal add-friend-impression" id="modal-addImpression">
        <div class="md-content">
            <h4 class="lead-in">Please describe the impression of "Jiayi Song" :</h4>
            <input type="text" value="" oninput="limitWordsCounts($(this))" id="impression" >
            <div class="add-friend-impression-tips clearfix">
                <em class="fl">Your name and description will be seen by everyone</em>
                <span class="fr">150</span>
            </div>
            <input type="submit" id="submitImpressionBtn" value="Submit" id="" class="reveal-button">
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
    <div class="md-overlay"></div>
<script src="/js/video-popup.js?version=20160512"></script>
<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>
<script src="/js/classie.js"></script>
<script src="/js/cssParser.js"></script>
<script src="/js/underscore-min.js"></script>
<script src="/js/backbone-min.js"></script>
<script src="/js/backbone.marionette.min.js"></script>
<script src="/js/modalEffects_jquery.js?201603229"></script>
<script src="/js/mn_test/viewProfile.js?201603229"></script>
<script src="/js/jquery-rebox.js?201603229"></script>

<script type="text/template" id="description-material-layout-template">
    <div class="description"></div>
    <div class="materialList"></div>
    <div class='less-more-button col-lg-12 col-xs-12' style="display: none">more</div>
</script>

<script type="text/template" id="description-template">
    <@if(typeof description == 'undefined'){}else if(description == ''){@><div class="col-lg-8 col-xs-12 disabled "><div class="r-line"><a class="add-description modalLink text-center"><i class="glyphicon glyphicon-align-left"></i><strong>Good guy</strong></a></div></div><@}else{@><div class="col-lg-8 col-xs-12 disabled"><div class="media-item-description"><p><@=description@></p></div></div><@}@>
</script>

<script type="text/template" id="material-template">
    <@if(type == 'IMG'){@>
        <div class="edit-hover"> <a class="zoom" title="<@=title@>" href="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@0o_0l_800w_85q.src"><img src="<@=materialSrc.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src"></a>
        </div>
    <@}else if(type == 'VIDEO'){@>
    <div class="edit-hover">
        <div class="video-img video-container">
            <@if(status == 'NORMAL'){@>
            <img materialSrc="<@=materialSrc@>" src="<@=videoPreviewImg.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_324h_324w_80q.src">
            <@}else if(status == 'TRANSCODE'){@>
            <img src="/images/transcoding_324.324.jpg"/>
            <@}@>
            <i class="glyphicon glyphicon-play-circle"></i>
            <div class="masking"></div>
        </div>
    </div>
    <@}else if(type == 'DOC'){@>
        <div class="edit-hover"><a href="<@=materialSrc@>" target="_blank" class="edit-document-item text-center"><i class="glyphicon glyphicon-list-alt"></i>
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
        <li class="col-lg-2 col-xs-4 " <@if(count[i] == 0){@> style="display:none" <@ } @> >
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
                        <li class="col-lg-2 col-xs-4"><p><@= App.activityTags[parseInt(activityTagList[i].title)]@></p></li>
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
            <@if(avatar){@><img width="200" height="200" src="<@=avatar.replace('focusedu.oss-cn-hangzhou.aliyuncs.com','img.kanwokanwo.com')@>@1e_1c_0o_0l_200h_200w_80q.src">
            <@}else{@><img width="200" height="200" src="/images/defaultavatar.jpg"><@}@>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <h2><@=name@></h2>
    </div>
    <ul class="col-xs-12 icon-list">
        <li>
            <i class="glyphicon glyphicon-map-marker"></i>
            <p><span>
                <@if(location){@><@=location@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li>
            <i class="glyphicon glyphicon-bed"></i>
            <p>
                <@if(currentSchool){@><@=currentSchool@><@}else{@>N/A<@}@>
            </p>
        </li>
        <li>
            <i class="glyphicon glyphicon-education"></i>
            <p><span>
            <@if(graduation){@><@=graduation@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li>
            <i class="glyphicon glyphicon-tower"></i>
            <p><span>
            <@if(hobby){@><@=hobby@><@}else{@>N/A<@}@>
            </span></p>
        </li>
        <li id="examRecord">
        </li>
    </ul>
</script>

<script type="text/template" id="examRecord-layout-template">
    <i class="glyphicon glyphicon-tags"></i>
    <a class="md-trigger" data-modal="modal-examRecord" href="javascript:void(0);">
        <p id="examRecordSummary">
        </p>
    </a>
    <div class="md-effect-1 reveal-modal add-score" id="modal-examRecord">
        <div class="md-content">
            <h4 class="lead-in">SCORE</h4>
            <!--<label>Your score is the most worthy of reference</label>-->
            <div id="examRecordDetail">
            </div>
            <button class="md-close"><i class="glyphicon glyphicon-remove"></i></button>
        </div>
    </div>
</script>

<script type="text/template" id="examRecordSummarySimpleView-template">
    <@if(items.length>0){
    _.each(items, function(item){ @>
        <div><@=item.examType@>：<@=parseFloat(item.total).toFixed(0)@></div>
    <@ })
    }else{@>
    N/A
    <@}@>
</script>

<script type="text/template" id="examRecordDetailSimpleView-template">
    <@ _.each(items, function(item){ @>
    <div class="add-score-content">
        <p> <select disabled>
            <option value=""><@=item.examType@></option>
        </select></p>
        <div class="score-list">
            <dl><dt>total</dt><dd><input type="text" value="<@=item.total@>" disabled></dd></dl>
            <@ _.each(item.examItemList, function(row){ @>
            <dl><dt><@=row.title@></dt><dd><input type="text" value="<@=row.score@>" disabled></dd></dl>
            <@ })@>
        </div>
    </div>
    <@ })@>
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
//        var modules = [];//"myStory", "honor", "portfolio"
        var jsonResult = {"myStory":{"description":"Although grew up in Siheyuan, I traveled around the world during my childhood. I lived a life blending typical stereotype with modern fashion pace. \n\nI love running, because it keeps me energized. I love reading in the sun, because it gives me the pleasant of the warmth from the outside to the peace inside. I shall keep running with my books to all places I am destined.","materials":[{"materialId":"48587a3e-9094-45a5-b888-9dca1f607702","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/449752057500427680_副本6491658739886886.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"719ebc37-56de-40ab-84c2-5ffbcc0559e4","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/231061071829490164_副本6491672766148629.jpg","seq":1,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"716f49d1-8631-4467-b12c-331fbdf7abb0","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/673235637330374259_副本6491682416164947.jpg","seq":2,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"b44ccf14-bc76-457f-92ef-4da086490b37","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/217020465660809777_副本6491696173404016.jpg","seq":3,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"d6839123-f4ce-4601-94f8-371e7b65c7af","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/557743480573631688_副本6491734536673058.jpg","seq":4,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"85e3e857-055c-4d75-b669-6b4e4fc52cf4","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/206626651693129654_副本6491760972391362.png","seq":5,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}]}, "honor":{"description":"Math League Award + Applied Physics Award + Annual Academic Achievement +Triple-A Student","materials":[{"materialId":"7272711e-10a3-44ef-aa46-64c772f26c4f","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/4010514423153998696492972212031260.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"3cf19def-ea65-4e98-828c-07cb26872d8f","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/839963165319346680_旋转6492984524423412.jpg","seq":1,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}]}, "portfolio":{"materials":[{"materialId":"1bdc5f5a-bc66-4b1f-997c-786a5afcb246","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/1126083713349152506491895262069675.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"fae87b02-5768-4796-97bd-7798709d44b7","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/4138664519437924216491905358670718.jpg","seq":1,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"571ad7b1-0fbe-4ad6-90dc-73cf6e0da16d","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/7382615453380238676491911394722583.jpg","seq":2,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"6d31b2a5-f6e3-4934-94cd-4aa22343f192","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/6370776376039639786491919142662113.jpg","seq":3,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}]}};
        var contentViews = [];
        //判断不显示为空的内容
        $.each(jsonResult, function(index, item){
            if(!item.description =="" || !item.materials.length == 0){
                contentViews[index] = new App.DescriptionMaterialSimpleView({model: new App.Content(item), el: "." + index + "Media"});
                contentViews[index].render();
            }
        });

        var myVideoJson ={"materialId":{"materialId":"77aeaf70-3504-47e4-abf6-a444ed11cc62"},"materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/videos/song72814746546205567281474891103430.mp4","seq":0,"status":"NORMAL","title":"","transCodeJobId":"4548fc5316044071b03038992a69de8c","type":"VIDEO","videoPreviewImg":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/song72814746546205567281474968530461.jpg"};
        new App.MyVideoModuleSimpleView({model: new App.Material(myVideoJson), el: ".myVideoMedia"}).render();
        var biography = {"avatar":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/1149124364739164596491928398856662.jpg","birth":null,"currentSchool":"The Experimental High School Attached to Beijing Normal University","graduation":"2016","hobby":"Finance, Accounting","location":"Beijing","name":"Jiayi Song"};
        new App.BiographyModuleSimpleView({model: new App.Biography(biography), el: ".biography"}).render();
        var examJson =[{"examItemList":[{"score":"770.0","title":"Writing"},{"score":"720.0","title":"Reading"},{"score":"800.0","title":"Mathematics"}],"examType":"SAT","total":"2290.0"},{"examItemList":[{"score":"28.0","title":"Writing"},{"score":"28.0","title":"Listening"},{"score":"29.0","title":"Speaking"},{"score":"30.0","title":"Reading"}],"examType":"TOEFL","total":"115.0"}];
        var examList = new App.ExamRecordList(examJson);
        new App.ExamRecordModuleSimpleView({collection: examList}).render();
        var remarkJson = [{"fromAvatar":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/tonsion_副本2769280430954842.jpg","fromPublicUri":"tonsion1","ownerPublicUri":"jiayisong","title":"跑步达人"},{"fromAvatar":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/8364313cjw1e2jhxq0thdj14978685004896.jpg","fromPublicUri":"lcq","ownerPublicUri":"jiayisong","title":"女神"}];
        var remarkDict = new App.RemarkDict({remarkList: remarkJson});
        new App.RemarkListView({model: remarkDict, el: ".friend-impression-list"}).render();
        $("#submitImpressionBtn").on("click", function () {
            remarkDict.saveRmark();
        });
        var activitiesJsonResult = [{"activityId":"3a9cf69e-53ac-4804-896f-8a05f8933ecb","activityTagList":[{"title":"10"}],"description":"Baking is an attitude of life that I've come to appreciate. It allows me to share my love of life with others. To anyone who is still hesitating: Wake up your taste bud, and let's start baking. :)","endDate":"Mar 2016","materials":[{"materialId":"22fb2da0-8224-4790-b19e-24fbc2befdd2","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/113572169609804435_副本6491564692686118.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"a441dffa-ad7e-4b93-9ace-371dd51961f2","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/2728836067565861306491583586528172.jpg","seq":1,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"e5cd051e-1c19-4c97-821a-d654afe642a9","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/2858731287249513156491593654952358.jpg","seq":2,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"5027842a-80ca-43a0-a98f-de1363b155d1","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/8333221753386214516491600756816069.jpg","seq":3,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"d022fdca-197f-48c8-93e4-b2046d575c92","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/8182583579985999716491615491337486.jpg","seq":4,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}],"seq":0,"startDate":"Mar 2012","studentProfileId":{"studentProfileId":"a9561dad-3ac1-448e-a40b-892fb65a761a"},"title":"Bakery"},{"activityId":"211eee81-7bfc-466c-be4f-e41e88748d97","activityTagList":[{"title":"0"}],"description":"My first official polymer clay artwork was literally a disaster :P Yet from primary school all the way to right now, my passion for this particular art never recede. And as my personal taste changed, my artworks experienced stages of revolution. :)","endDate":"Mar 2016","materials":[{"materialId":"c7588ea7-462a-427a-aea8-1b6cca016470","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/409309547730823008_副本6493128479912821.jpg","seq":0,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"53e8b6d2-623c-4c65-8fb4-47880b164a1e","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/4585580756936835976493153001373711.jpg","seq":1,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"857a404e-f06b-4af5-8d3d-a744c83c52fa","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/7096424019030685996493174843850859.jpg","seq":2,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""},{"materialId":"ee6c1a16-6c4b-4546-a66a-8bae5e15a53f","materialSrc":"//focusedu.oss-cn-hangzhou.aliyuncs.com/images/5999734198172483426493182201072029.jpg","seq":3,"status":"NORMAL","title":"","type":"IMG","videoPreviewImg":""}],"seq":1,"startDate":"Mar 2007","studentProfileId":{"studentProfileId":"a9561dad-3ac1-448e-a40b-892fb65a761a"},"title":"Clay artwork"}];
        var activityList = new App.ActivityList(activitiesJsonResult);
        var activityModuleView = new App.ActivityModuleView({collection: activityList});
        activityModuleView.render();

        currentUserStudentProfileId = ""
        targetStudentProfileId = "a9561dad-3ac1-448e-a40b-892fb65a761a"

        $('.materialList').rebox({selector: '.zoom'});
    });
</script>
</html>
