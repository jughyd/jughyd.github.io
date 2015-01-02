<#include "header.ftl">
<#include "menu.ftl">

	<div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
				<h1 class="page-header">${content.tags[0]}
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">${content.title}</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

         <!-- Intro Content -->
		<div class="row">
            <div class="col-md-6">
                <img class="img-responsive" src="../images/${content.title}.jpg" alt="">
            </div>
            <div class="col-md-6">
				<h2>${content.title}</h2>
				${content.body}
		    </div>
		</div>
		<#list posts as post> 
			<#if post.tags[0] ??>
					<#if (post.tags[0] == "Getting Started")>
					    <#if (post.title == content.tags[1])>
						<a class="btn btn-primary" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Read More</a>
						 <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
                                ${post.body}
                            </div>
                        </div>
						</#if>
					</#if>
					<#if (post.tags[0] == "Activities")>
					 <#if (post.title == content.tags[1])>
					 <a class="btn btn-primary" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Read More</a>
						 <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                ${post.body}
                            </div>
                        </div>
						</#if>
					</#if>
				<#else>
				</#if>
			</#list>
			 
       
		
		
<#include "footer.ftl">