 <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">JUG Hyderabad</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<#list pages as page>
							<#if page.tags ??>
								<#if (page.tags[0] == "navigation") && (page.tags[1] == "notdropdown")>
									<li>
										<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${page.uri}">${page.title}</a>
									</li>
								</#if>
							<#else>
							</#if>
						</#list>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Getting Started<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<#list pages as page>
									<#if page.tags ??>
										<#if (page.tags[0] == "navigation") && (page.tags[1] == "dropdown") && (page.tags[2] == "gettingstarted")>
											<li>
												<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${page.uri}">${page.title}</a>
											</li>
										</#if>
									<#else>
									</#if>
								</#list>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Activities<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<#list pages as page>
									<#if page.tags ??>
										<#if (page.tags[0] == "navigation") && (page.tags[1] == "dropdown") && (page.tags[2] == "activities")>
											<li>
												<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${page.uri}">${page.title}</a>
											</li>
										</#if>
									<#else>
									</#if>
								</#list>
							</ul>
						</li>
						<li>
							<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>news/news-index.html">News</a>
						</li>
						<li>
							<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog/blog-index.html">Blogs</a>
						</li>
					</ul>
				</div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>