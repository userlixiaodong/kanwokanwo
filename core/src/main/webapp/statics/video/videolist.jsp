<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <title>Kanwokanwo: Helping students get seen by schools.</title>
    <link href="/style/public.css" rel="stylesheet" type="text/css">
    <link href="/style/frame.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery-rebox.css?201603229"/>
    <link rel="stylesheet" type="text/css" href="/style/video-js.css?20160329"/>
    <link href="/style/student.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/style/jquery.ui.datepicker.css"/>
    <style>
        .video-center{
            width: 1140px;
            margin:0 auto;
            padding:20px;
        }
        .video-center p{
            text-align: center;
            font-family: "Microsoft YaHei";
            font-size: 13px;
        }
        .video-center h2{
            margin:0;
            font-size: 30px;
            color: #3d3d3d;
            font-family: "Microsoft YaHei";
            border-left: 10px solid #04bc8e;
            padding-left: 10px;
            font-weight:normal;
        }
        .highSchool-video,.university-video,.postgraduate-video{
            clear: both;
            margin: 20px;
            padding: 10px;
            background: #ffffff;
        }
        .highSchool-video li,.university-video li,.postgraduate-video li{
            float: left;
        }
        .video-center em{
            display: block;
            border-bottom: 1px solid #dddddd;
            margin: 15px;
        }
        @media screen and (max-width:1150px ){
            .video-center{
                width: 625px;
                margin:0 auto;
                padding:20px;
            }
        }
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/common/top.jsp" %>
<section class="container-fluid" style="background: #f0f0f0;">
    <div class="video-center" >
        <div class="highSchool-video">
            <h2>高中视频</h2>
            <em></em>
            <ul>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_1.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_1.mp4">
                                </a>
                            </div>
                        </div>

                        <p>The John Caroll School独家专访</p>
                    </div>

                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_2.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_2.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Joliet Catholic Academy 独家专访</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_3.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_3.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Harvey School独家专访</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_4.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_4.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Totino-Grace High School独家专访</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_5.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_5.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Broadwater Academy独家专访</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_6.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Interview_by_Luke_part_6.mp4">
                                </a>
                                <p>Charles Wright Academy独家专访</p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/cxbtalk.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/2016%E5%B9%B410%E6%9C%8816%E6%97%A5%E4%B8%8A%E5%8D%88%E9%99%88%E6%97%AD%E5%8D%9A%E8%AE%BF%E8%B0%88.mp4">
                                </a>
                                <p>The White mountain School</p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_7.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/2016%E5%B9%B410%E6%9C%8816%E6%97%A5%E4%B8%8B%E5%8D%88%E5%8D%A2%E5%8F%AF%E8%80%81%E5%B8%88%E8%AE%BF%E8%B0%88.mp4">
                                </a>
                                <p>Shattuck-St. Mary's School</p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/luketalk_8.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/%E5%8D%A2%E5%8F%AF%E8%80%81%E5%B8%882016%E5%B9%B410%E6%9C%8819%E6%97%A5%20%E8%AE%BF%E8%B0%88.mp4">
                                </a>
                                <p>Oldfields School</p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="university-video">
            <h2>大学视频</h2>
            <em></em>
            <ul>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/ColumbiaUniversity.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Columbia%20University.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Columbia University</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/BrownUniversity.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Brown%20University.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Brown University</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/CaliforniaInstituteofTechnology(Caltech).jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/California%20Institute%20of%20Technology%20%28Caltech%29.mp4">
                                </a>
                            </div>
                        </div>
                        <p>California Institute of Technology (Caltech)</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/CornellUniversity.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Cornell%20University.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Cornell University</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px"  src="../../../images/school-list/HarvardUniversity.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Harvard%20University.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Harvard University</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px"  src="../../../images/school-list/PrincetonUniversity.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/Princeton%20University.mp4">
                                </a>
                            </div>
                        </div>
                        <p>Princeton University</p>
                    </div>
                </li>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="postgraduate-video">
            <h2>研究生视频</h2>
            <em></em>
            <ul>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/kanglei.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/1020336362735316635336671164658194.mp4">
                                </a>
                            </div>
                        </div>
                        <p>康蕾托福听力讲座</p>
                    </div>
                </li>
                <li>
                    <div class="add-my-video">
                        <div class="details">
                            <div class="video-inspiration">
                                <a class="inspireVideo video-container">
                                    <i class="glyphicon glyphicon-play-circle"></i><img height="173px" width="244px" src="../../../images/school-list/chaomeng.jpg" materialSrc="//kw-cdn.kanwokanwo.com/videos/20161013342320695137301342603695153915.mp4">
                                </a>
                            </div>
                        </div>
                        <p>晁猛老师《商科研究生专场》</p>
                    </div>
                </li>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
</section>
<div class="clearfix"></div>
<%@include file="/WEB-INF/views/common/bottom.jsp" %>
<script src="/js/video.js"></script>
<script src="/js/myVideo.js"></script>
<script src="/js/video-popup.js?20160512"></script>
</body>
</html>
