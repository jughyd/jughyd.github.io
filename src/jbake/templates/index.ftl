<#include "header.ftl">

   <#include "menu.ftl">
<script type="text/javascript" src="http://feed.mikle.com/js/rssmikle.js"></script>
    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('/images/JUGSlide1.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Hyderabad JUG</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('/images/JUGSlide2.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Hackergarten</h2>
                </div>
            </div> 
            <div class="item">
                <div class="fill" style="background-image:url('/images/JUGSlide3.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Code Retreat</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">
		
		<!-- How it started Section -->
        <div class="row">
            <div class="col-lg-12">
                <hr>
            </div>
            <div class="col-md-6">
JUG Hyderabad: A Java Community (Java User Group) located in Hyderabad the capital city. The group focuses and promotes Java and related technology in and around Hyderabad. It’s a group of professionals, freshers, developers, students who use Java in day to day life as a profession, hobby or as a job and like to learn and spread the technology as a community.
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="images/jughyd.jpg" alt="JUGHyderabad">
            </div>
        </div>
		  <!-- /.row -->
		<!-- News Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">News </h2>
            </div>
            <div class="col-lg-12">
			<#assign countSigned = 1> 
            <#list newspages as post> 
				<#if post.tags ??>
					<#if (post.tags[0] =="news") && (countSigned<=3)>
						<!-- Project One -->
						<div class="feed_item">
							<div class="feed_item_title">
								<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.uri}">
									<b>${post.title}</b>
								</a>
							</div>
							<div class="feed_item_description">
								${post.body?substring(0,100)}...
							</div>						
						</div>
						<!-- /.row -->
						 <#assign countSigned = countSigned + 1>
					</#if> 
				<#else> 
				</#if> 
			</#list>  
				
            </div>
           
        </div>
        <!-- /.row -->
        <!-- /.row -->
	<!-- Events Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Events </h2>
            </div>
            <div class="col-lg-12">
               <!-- start feedwind code -->
				
				<script type="text/javascript">
				(
					function() {
						var params = 
						{
							rssmikle_url: "http://www.meetup.com/jughyderabad/events/rss/",
							rssmikle_frame_width: "300",
							rssmikle_frame_height: "500",
							frame_height_by_article: "3",
							rssmikle_target: "_blank",
							rssmikle_font: "Arial, Helvetica, sans-serif",
							rssmikle_font_size: "12",
							rssmikle_border: "off",
							responsive: "on",
							rssmikle_css_url: "",
							text_align: "left",
							text_align2: "left",
							corner: "off",
							scrollbar: "off",
							autoscroll: "off",
							scrolldirection: "up",
							scrollstep: "3",
							mcspeed: "20",
							sort: "New",
							rssmikle_title: "off",
							rssmikle_title_sentence: "",
							rssmikle_title_link: "",
							rssmikle_title_bgcolor: "#0066FF",
							rssmikle_title_color: "#FFFFFF",
							rssmikle_title_bgimage: "",
							rssmikle_item_bgcolor: "#FFFFFF",
							rssmikle_item_bgimage: "",
							rssmikle_item_title_length: "55",
							rssmikle_item_title_color: "#0066FF",
							rssmikle_item_border_bottom: "on",
							rssmikle_item_description: "on",
							item_link: "off",
							rssmikle_item_description_length: "150",
							rssmikle_item_description_color: "#666666",
							rssmikle_item_date: "gl1",
							rssmikle_timezone: "Etc/GMT",
							datetime_format: "%b %e, %Y %l:%M:%S %p",
							item_description_style: "text",
							item_thumbnail: "full",
							article_num: "15",
							rssmikle_item_podcast: "off",
							keyword_inc: "",
							keyword_exc: ""
						};
						feedwind_show_widget_iframe(params);
					}
				)();
				</script>
            </div>
           
        </div>
        <!-- /.row -->
        <!-- Portfolio Section -->
        <div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Activities</h2>
			</div>
			<#assign countactivities = 1>
			<#list getstartacts as getactivities> 
				<#if getactivities.tags[0] ??>
					<#if (getactivities.tags[0] == "Activities") && (countactivities<=3)>
						<div class="col-md-4 col-sm-6">
							<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>activities/${getactivities.title?lower_case?replace(" ", "")}.html">
								<img class="img-responsive img-portfolio img-hover" src="../images/${getactivities.title}.jpg" alt="">
							</a>
						</div>
						<#assign countactivities = countactivities + 1>
					</#if>
				<#else>
				</#if>
			</#list>
	
        </div>
        <!-- /.row -->
			    
		       	
   <#include "footer.ftl">
