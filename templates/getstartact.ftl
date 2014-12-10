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
<#include "footer.ftl">