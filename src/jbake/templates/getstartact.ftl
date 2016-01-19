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
			<div class="col-md-13">
				<h2>${content.title}</h2>
			
             
Welcome to Java User Group Hyderabad. 

<h3>Who can join?</h3> 
<p>Anyone interested in Java can join. No minimum Java proficiency is assumed. Both Students and Professionals can join the JUG.
However please come to the meetup with your Laptops loaded with necessary Dev tools like IDE and ofcourse Java :)

<h3>How to join the meetup?</h3>
Visit the JUG Hyderabad <a href="http://www.meetup.com/jughyderabad/">Meetup page</a>. 
Please have a proper user name(Full Name) on <a href="http://www.meetup.com/jughyderabad/">Meetup</a> and avoid using your online handles e.g: tourist,snapdragon to register on meetup. We also have a <a href="https://www.facebook.com/jughyderabad.in/">Facebook group</a> and <a href="https://twitter.com/JUGHYD">twitter handle</a>. If you are someone looking for a job join we have a <a href="https://www.linkedin.com/groups/8307243/profile">linked-in group</a> where companies post their jobs.Once you are on meetup you can start using our mailing list  <a href="mailto:jughyderabad-list@meetup.com">jughyderabad-list@meetup.com</a> to send us queries. 

<h3>What we do?</h3> 
<p>We are Java enthusiasts who like to code on over a cup of coffee on our regular Hackergarten events. Some of us are also JSR contributors.  Please find our work on Github here <a href="https://github.com/jughyd">github.com/jughyd</a>.
Currently we have quite a few active projects. Fork us there and feel free to contribute. However we would appreciate if you visit us as it would be easy to get orientation for the projects and pick up speed with your open source contributions. 

<h3>Participation? </h3>
<p>We have monthly meetups, regular hackergarten events and a annual Code retreat. Stay tuned to our Activities section to know more. 

Hale Java and have fun. !!!	

         	<!--<#list getstartacts as getstartact> 
					<#if getstartact.tags[0] ??> -->
						<#if (content.tags[0] == "Getting Started")>
							<!--<#if (getstartact.title == content.tags[1])>
							<a class="btn btn-primary" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Read More</a>
							 <div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body">-->
									${content.body}
							  <!--  </div>
							</div>
							</#if>-->
						</#if>
						<#if (content.tags[0] == "Activities")>
						 <!--<#if (getstartact.title == content.tags[1])>
						 <a class="btn btn-primary" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Read More</a>
							 <div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">-->
									${content.body}
							 <!--   </div>
							</div>
							</#if>-->
						</#if>
					<!--<#else>
					</#if>
				</#list>	-->
			</div>
		</div>
	
<#include "footer.ftl">
