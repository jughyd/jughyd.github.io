<#include "header.ftl">
	
	<#include "menu.ftl">

    <!-- Page Content -->
    <div class="container">
				
  	 <#if (content.type == "newspage")>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">News</h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">News</li>
					<li class="active">${content.title}</li>
                </ol>
				<h4>${content.title}</h4>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
			
            <!-- News Post Content Column -->
            <div class="col-lg-8">

                <!-- News Post -->

                <hr>

                <!-- Date/Time -->
                <p><i class="fa fa-clock-o"></i> Posted on ${content.date?string("dd MMMM yyyy")}</p>

                <hr>

                <!-- Preview Image -->
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">

                <hr>

                <!-- Post Content -->
                <p>
				${content.body}				
				</p>

                <hr>
            </div>

            <!-- News Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- News Search Well -->
                <div class="well">
                    <h4>News Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- News Categories Well -->
                <div class="well">
                    <h4>News Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                                <li><a href="#">Category Name</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Side Widget Well</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
                </div>

            </div>

        </div>
        <!-- /.row -->
	</#if>
		
<#include "footer.ftl">