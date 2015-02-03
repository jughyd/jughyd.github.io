    <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; <b>JUG Hyderabad</b> 2015 | | Mixed with Bootstrap | Baked with <a href="http://jbake.org/" target="_blank">JBake</a> ${version}</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
	<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
	<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
