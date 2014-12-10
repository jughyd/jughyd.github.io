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
		
		<#list posts as post> 
			<#if post.tags ??>
				<#if (post.tags[0] =="news")>
					<!-- Project One -->
					<div class="row">
						<div class="col-md-7">
							<a href="\pages\news-pages\${post.tags[1]}">
								<img class="img-responsive img-hover" src="http://placehold.it/700x300" alt="">
							</a>
						</div>
						<div class="col-md-5">
							<h3>${post.title}</h3>
							<p>${post.body}</p>
							<a class="btn btn-primary" href="\pages\news-pages\${post.tags[1]}">View Project</i></a>
						</div>
					</div>
					<!-- /.row -->

					<hr>
				</#if> 
			<#else> 
			</#if> 
		</#list>
        
		

        <!-- Pagination -->
        <div class="row text-center">
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
        </div>
        <!-- /.row -->

<#include "footer.ftl">