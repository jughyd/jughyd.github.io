<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">News</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
  JUGHyd Twitter timeline. For event schedule visit <a href="meetup.com/jughyderabad">meetup page</a>
  <div class="row text-center">
		 <a class="twitter-timeline" href="https://twitter.com/JUGHYD" data-widget-id="689522274202886144">Tweets by @JUGHYD</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script> </div>
		
		<#list newspages as post> 
			<#if post.tags ??>
				<#if (post.tags[0] =="news")>
					<!-- Project One -->
					<div class="row">
                                                <!--Removing images--> 
						<!--<div class="col-md-7">
							<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.uri}">
								<img class="img-responsive img-hover" src="http://placehold.it/700x300" alt="">
							</a>
						</div>-->
						<div class="col-md-5">
							<h3>${post.title}</h3>
							<p>
								<#if (post.body)?length &lt; 160>
									${post.body}
								<#else>
									${post.body?substring(0,160)} ...
								</#if>
							</p>
							<a class="btn btn-primary" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${post.uri}">Read More</i></a>
						</div>
					</div>
                                       
					<!-- /.row -->

					<hr>
				</#if> 
			<#else> 
			</#if> 
		</#list>
      
        <!-- Pagination -->
        <!--<div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>-->
        <!-- /.row -->

<#include "footer.ftl">
