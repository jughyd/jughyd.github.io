<#include "header.ftl"> <#include "menu.ftl">


<div class="container">

	<!-- Page Heading/Breadcrumbs -->
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">User blogs</li>
			</ol>
		</div>
	</div>
	<!-- /.row -->

	<div class="row">

		<!-- Blog Entries Column -->
		<div class="col-md-8">

			<!-- Blog Posts -->
			<#list posts as post> 
			<#if post.tags ??>
			<#if (post.tags[0] =="blog")>
			<h2>
				<a href="\pages\blog-pages\${post.tags[1]}">${post.title}</a>
			</h2>
			<p>
				<i class="fa fa-clock-o"></i> Posted on ${content.date?string("dd MMMM yyyy")}
			</p>
			<hr>
			<a href="\pages\blog-pages\${post.tags[1]}"> <img
				class="img-responsive img-hover" src="http://placehold.it/900x300"
				alt="">
			</a>
			<hr>
			<p>${post.body}</p>
			<a class="btn btn-primary" href="#">Read More <i
				class="fa fa-angle-right"></i></a>

			<hr>
			</#if> 
			<#else> 
			</#if> 
			</#list>
			<!-- Pager -->
			<ul class="pager">
				<li class="previous"><a href="#">&larr; Older</a></li>
				<li class="next"><a href="#">Newer &rarr;</a></li>
			</ul>

		</div>

		<!-- Blog Sidebar Widgets Column -->
		<div class="col-md-4">

			<!-- Blog Search Well -->
			<div class="well">
				<h4>Blog Search</h4>
				<div class="input-group">
					<input type="text" class="form-control"> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
				<!-- /.input-group -->
			</div>

			<!-- Blog Categories Well -->
			<div class="well">
				<h4>Blog Categories</h4>
				<div class="row">
					<div class="col-lg-6">
						<ul class="list-unstyled">
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
						</ul>
					</div>
					<!-- /.col-lg-6 -->
					<div class="col-lg-6">
						<ul class="list-unstyled">
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
							<li><a href="#">Category Name</a></li>
						</ul>
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->
			</div>

			<!-- Side Widget Well -->
			<div class="well">
				<h4>Side Widget Well</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Inventore, perspiciatis adipisci accusamus laudantium odit aliquam
					repellat tempore quos aspernatur vero.</p>
			</div>

		</div>

	</div>
	<!-- /.row -->

	<hr>



</div>
<#include "footer.ftl">
