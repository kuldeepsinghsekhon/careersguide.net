<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include  file="../layout/taglib.jsp"%>
     <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet" href="github-activity.min.css">

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/mustache.js/0.7.2/mustache.min.js"></script>
<style>
<!--
body {
  font-family: 'Lato', arial, sans-serif;
  color: #434343;
  background: #dae3e7;
  font-size: 16px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  color: #778492;
}
a {
  color: #3aaa64;
  -webkit-transition: all 0.4s ease-in-out;
  -moz-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
}
a:hover {
  text-decoration: underline;
  color: #5f6b77;
  color: #2d844e;
}
a:focus {
  text-decoration: none;
}
.btn,
a.btn {
  -webkit-transition: all 0.4s ease-in-out;
  -moz-transition: all 0.4s ease-in-out;
  -ms-transition: all 0.4s ease-in-out;
  -o-transition: all 0.4s ease-in-out;
  font-family: 'Montserrat', arial, sans-serif;
  padding: 8px 16px;
  font-weight: bold;
}
.btn .fa,
a.btn .fa {
  margin-right: 5px;
}
.btn:focus,
a.btn:focus {
  color: #fff;
}
a.btn-cta-primary,
.btn-cta-primary {
  background: #54ba4e;
  border: 1px solid #54ba4e;
  color: #fff;
  font-weight: 600;
  text-transform: uppercase;
}
a.btn-cta-primary:hover,
.btn-cta-primary:hover {
  background: #49ac43;
  border: 1px solid #49ac43;
  color: #fff;
}
a.btn-cta-secondary,
.btn-cta-secondary {
  background: #479fc8;
  border: 1px solid #479fc8;
  color: #fff;
  font-weight: 600;
  text-transform: uppercase;
}
a.btn-cta-secondary:hover,
.btn-cta-secondary:hover {
  background: #3893bd;
  border: 1px solid #3893bd;
  color: #fff;
}
.text-highlight {
  color: #32383e;
}
.label-theme {
  background: #3aaa64;
  font-size: 12px;
}
a.dotted-link {
  border-bottom: 1px dotted #778492;
  color: #778492;
}
a.dotted-link:hover {
  text-decoration: none;
  color: #49515a;
}
/*
iframe {

    .header {
        padding: 0;
    }
}

.iframe-wrapper {
    overflow: auto;
    -webkit-overflow-scrolling:touch;
}
*/
/* ======= Header ======= */
.header {
  padding: 30px 0;
  background: #f5f5f5;
  border-top: 10px solid #778492;
}
.header .btn {
  margin-top: 60px;
  font-weight: bold;
}
.header .profile-image {
  margin-right: 30px;
}
.header .profile-content .name {
  color: #49515a;
  font-size: 38px;
  margin-bottom: 5px;
  margin-top: 30px;
}
.header .profile-content .desc {
  color: #778492;
  font-family: "Lato", arial, sans-serif;
  font-weight: 400;
  font-size: 24px;
  margin-top: 0;
  margin-bottom: 15px;
}
.header .profile-content .social a {
  background: #b0b7bf;
  width: 36px;
  height: 36px;
  display: inline-block;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  -ms-border-radius: 50%;
  -o-border-radius: 50%;
  border-radius: 50%;
  -moz-background-clip: padding;
  -webkit-background-clip: padding-box;
  background-clip: padding-box;
  color: #fff;
  text-align: center;
}
.header .profile-content .social a:hover {
  background: #778492;
}
.header .profile-content .social a .fa {
  font-size: 20px;
  padding-top: 8px;
}
/* ======= Sections======= */
.sections-wrapper {
  padding-top: 60px;
  padding-bottom: 60px;
}
.section {
  margin-bottom: 30px;
}
.section .section-inner {
  background: #fff;
  padding: 30px;
}
.section .heading {
  margin-top: 0;
  margin-bottom: 30px;
  color: #545e69;
  font-size: 24px;
}
.section .content .more-link .fa {
  margin-right: 5px;
  font-size: 14px;
}
/* About Section */
/* Latest Section */
.latest .item {
  margin-bottom: 30px;
}
.latest .item .title {
  font-size: 18px;
  margin-top: 0;
}
.latest .item .title .label {
  margin-left: 5px;
  font-size: 12px;
}
.latest .item .title a {
  color: #778492;
}
.latest .item .title a:hover {
  color: #5f6b77;
}
.latest .item .project-image:hover {
  -webkit-opacity: 0.8;
  -moz-opacity: 0.8;
  opacity: 0.8;
}
.latest .divider {
  margin-bottom: 60px;
}
.latest .featured {
  margin-bottom: 60px;
}
.latest .featured .title {
  margin-bottom: 5px;
  font-size: 20px;
}
.latest .featured .summary {
  margin-bottom: 30px;
  color: #778492;
}
.latest .featured img {
  margin-bottom: 30px;
}
.latest .featured .desc {
  margin-bottom: 30px;
}
.latest .featured-image {
  position: relative;
}
.latest .featured-image .text {
  background: #3aaa64;
  color: #fff;
}
.latest .featured-image .ribbon {
  position: absolute;
  top: -4px;
  right: -4px;
  width: 110px;
  height: 110px;
  overflow: hidden;
}
.latest .featured-image .ribbon .text {
  font-family: 'Montserrat', sans-serif;
  position: relative;
  left: -8px;
  top: 18px;
  width: 158px;
  padding: 10px 10px;
  font-size: 15px;
  font-weight: bold;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
  background-color: #479fc8;
  -webkit-transform: rotate(45deg) translate3d(0, 0, 0);
  -moz-transform: rotate(45deg) translate3d(0, 0, 0);
  -ms-transform: rotate(45deg) translate3d(0, 0, 0);
  -o-transform: rotate(45deg) translate3d(0, 0, 0);
}
.latest .featured-image .ribbon .text:before,
.latest .featured-image .ribbon .text:after {
  content: '';
  position: absolute;
  bottom: -5px;
  border-top: 5px solid #276582;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
}
.latest .featured-image .ribbon .text:before {
  left: 0;
}
.latest .featured-image .ribbon .text:after {
  right: 0;
}
/* Projects Section */
.projects .item {
  margin-bottom: 30px;
}
.projects .item .title {
  font-size: 16px;
  margin-top: 0;
  margin-bottom: 5px;
  line-height: 1.5;
}
.projects .item .title a {
  color: #778492;
}
.projects .item .title a:hover {
  color: #5f6b77;
}
/* Work Section */
.experience .item {
  margin-bottom: 30px;
}
.experience .item .title {
  font-size: 16px;
  margin-top: 0;
  margin-bottom: 5px;
  line-height: 1.5;
}
.experience .item .title .place {
  color: #999999;
  font-weight: normal;
}
.experience .item .title .place a {
  color: #999999;
}
.experience .item .title .place a:hover {
  color: #666666;
}
.experience .item .title .year {
  color: #999999;
  font-weight: normal;
}
/* Git section */
.ghfeed {
  height: 600px;
}
.ghfeed,
.ghfeed *,
.ghfeed *:before,
.ghfeed *:after {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
}
/* Info Section */
.info .fa {
  margin-right: 15px;
  color: #ccd1d6;
}
.info .fa.fa-envelope-o {
  font-size: 14px;
}
.info ul {
  margin-bottom: 0;
}
.info li {
  margin-bottom: 15px;
}
.info li:last-child {
  margin-bottom: 0;
}
/* Skills Section */
.skills .intro {
  margin-bottom: 30px;
}
.skills .skillset .item {
  margin-bottom: 30px;
}
.skills .skillset .level-title {
  font-size: 16px;
  position: relative;
  margin-top: 0;
  margin-bottom: 10;
}
.skills .skillset .level-title .level-label {
  color: #ccd1d6;
  font-size: 14px;
  font-weight: 400;
  font-family: "Lato", arial, sans-serif;
  position: absolute;
  right: 0;
  top: 0;
}
.skills .skillset .level-bar {
  height: 15px;
  background: #e8e8e8;
}
.skills .skillset .level-bar-inner {
  height: 15px;
  background: #66cb8c;
}
/* Testimonials section */
.testimonials .item {
  margin-bottom: 30px;
}
.testimonials .item:last-child {
  margin-bottom: 0;
}
.testimonials .item .quote {
  color: #666666;
  font-size: 16px;
  border-left-color: #9fdeb7;
  margin-bottom: 15px;
}
.testimonials .item .quote .fa {
  color: #79d19a;
  margin-right: 15px;
}
.testimonials .item .source {
  font-size: 14px;
  padding-left: 30px;
  font-weight: 500;
}
.testimonials .item .source .name {
  color: #939ea9;
  font-weight: 600;
}
.testimonials .item .source .title {
  color: #999999;
}
/* Education section */
.education .item {
  margin-bottom: 30px;
}
.education .item:last-child {
  margin-bottom: 0;
}
.education .item .title {
  font-size: 16px;
  margin-top: 0;
}
.education .item .university {
  font-family: "Lato", arial, sans-serif;
  font-size: 13px;
  color: #999999;
  font-weight: 600;
  padding-left: 25px;
}
.education .item .university .year {
  color: #b0b7bf;
  font-weight: 500;
}
/* Language Section */
.languages .item {
  margin-bottom: 15px;
}
.languages .item .title {
  color: #778492;
}
.languages .item .level {
  color: #999999;
}
.languages .item:last-child {
  margin-bottom: 0;
}
.languages .item .fa {
  color: #79d19a;
}
/* Blog Section */
.blog .item {
  margin-bottom: 30px;
}
.blog .item .title {
  font-size: 18px;
  line-height: 1.3;
}
.blog .item .title a {
  color: #778492;
}
.blog .item .title a:hover {
  color: #5f6b77;
}
.blog .item:last-child {
  margin-bottom: 0;
}
/* List section */
.list ul li {
  margin-bottom: 10px;
}
.list ul li .fa {
  margin-right: 5px;
}
.list ul li a {
  color: #778492;
}
.list ul li a:hover {
  color: #49515a;
}
/* Credits */
.credits ul li {
  margin-bottom: 10px;
}
.credits ul li .fa {
  margin-right: 5px;
}
.credits ul li a {
  color: #778492;
}
.credits ul li a:hover {
  color: #49515a;
}
.credits .btn {
  margin-bottom: 15px;
}
/* ======= Footer ======= */

-->
</style>
 <!-- ******HEADER****** --> 
    <header class="header">
        <div class="container">                       
            <img class="profile-image img-responsive pull-left" src="assets/images/profile.png" alt="James Lee" />
            <div class="profile-content pull-left">
                <h1 class="name">James Lee</h1>
                <h2 class="desc">Web App Developer</h2>   
                <ul class="social list-inline">
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>                   
                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-github-alt"></i></a></li>                  
                    <li class="last-item"><a href="#"><i class="fa fa-hacker-news"></i></a></li>                 
                </ul> 
            </div><!--//profile-->
            <a class="btn btn-cta-primary pull-right" href="http://themes.3rdwavemedia.com/" target="_blank"><i class="fa fa-paper-plane"></i> Contact Me</a>              
        </div><!--//container-->
    </header><!--//header-->
    
    <div class="container sections-wrapper">
        <div class="row">
            <div class="primary col-md-8 col-sm-12 col-xs-12">
                <section class="about section">
                    <div class="section-inner">
                        <h2 class="heading">About Me</h2>
                        <div class="content">
                            <p>Write a brief intro about yourself. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec.</p>    
         
        <p>It's a good idea to include your personal interests and hobbies as well. Commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                         
                        </div><!--//content-->
                    </div><!--//section-inner-->                 
                </section><!--//section-->
    
               <section class="latest section">
                    <div class="section-inner">
                        <h2 class="heading">Latest Projects</h2>
                        <div class="content">    
                                               
                            <div class="item featured text-center">
                                <h3 class="title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-products-velocity/" target="_blank">KickStarter - Velocity</a></h3>
                                <p class="summary">A responsive Bootstrap template designed for digital products</p>
                                <div class="featured-image">
                                    <a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-products-velocity/" target="_blank">
                                    <img class="img-responsive project-image" src="assets/images/projects/project-featured.png" alt="project name" />
                                    </a>
                                    <div class="ribbon">
                                        <div class="text">New</div>
                                        </div>
                                    </div>
                                    
                                <div class="desc text-left">                                    
                                    <p>You can promote your main project here. Suspendisse in tellus dolor. Vivamus a tortor eu turpis pharetra consequat quis non metus. Aliquam aliquam, orci eu suscipit pellentesque, mauris dui tincidunt enim, eget iaculis ante dolor non turpis.</p>
                                    <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. At vero eos et accusamus et iusto odio dignissimos ducimus.</p>
                                </div><!--//desc-->         
                                <a class="btn btn-cta-secondary" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-products-velocity/" target="_blank"><i class="fa fa-thumbs-o-up"></i> Back my project</a>                 
                            </div><!--//item-->
                            <hr class="divider" />
                            <div class="item row">
                                <a class="col-md-4 col-sm-4 col-xs-12" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank">
                                <img class="img-responsive project-image" src="assets/images/projects/project-5.png" alt="project name" />
                                </a>
                                <div class="desc col-md-8 col-sm-8 col-xs-12">
                                    <h3 class="title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank">Atom - Designed for Mobile Apps</a></h3>
                                    <p>You can put one of your secondary projects here. Suspendisse in tellus dolor. Vivamus a tortor eu turpis pharetra consequat quis non metus. Aliquam aliquam, orci eu suscipit pellentesque, mauris dui tincidunt enim, eget iaculis ante dolor non turpis.</p>
                                    <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank"><i class="fa fa-external-link"></i> Find out more</a></p>
                                </div><!--//desc-->                          
                            </div><!--//item-->
                            
                            <div class="item row">
                                <a class="col-md-4 col-sm-4 col-xs-12" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank">
                                <img class="img-responsive project-image" src="assets/images/projects/project-4.png" alt="project name" />
                                </a>
                                <div class="desc col-md-8 col-sm-8 col-xs-12">
                                    <h3 class="title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank">DevStudio - Designed for Web Development Agencies</a></h3>
                                    <p>You can put one of your secondary projects here. Suspendisse in tellus dolor. Vivamus a tortor eu turpis pharetra consequat quis non metus. Aliquam aliquam, orci eu suscipit pellentesque, mauris dui tincidunt enim, eget iaculis ante dolor non turpis.</p>
                                    <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank"><i class="fa fa-external-link"></i> Find out more</a></p>
                                </div><!--//desc-->                          
                            </div><!--//item-->
                            
                            <div class="item row">
                                <a class="col-md-4 col-sm-4 col-xs-12" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank">
                                <img class="img-responsive project-image" src="assets/images/projects/project-1.png" alt="project name" />
                                </a>
                                <div class="desc col-md-8 col-sm-8 col-xs-12">
                                    <h3 class="title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank">Tempo - Designed for Startups</a></h3>
                                    <p>You can put one of your secondary projects here. Suspendisse in tellus dolor. Vivamus a tortor eu turpis pharetra consequat quis non metus. Aliquam aliquam, orci eu suscipit pellentesque, mauris dui tincidunt enim, eget iaculis ante dolor non turpis.</p>
                                    <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank"><i class="fa fa-external-link"></i> Find out more</a></p>
                                </div><!--//desc-->                          
                            </div><!--//item-->                            
                            <div class="item row">
                                <a class="col-md-4 col-sm-4 col-xs-12" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank">
                                <img class="img-responsive project-image" src="assets/images/projects/project-2.png" alt="project name" />
                                </a>
                                <div class="desc col-md-8 col-sm-8 col-xs-12">
                                    <h3 class="title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank">Delta - Designed for Mobile Apps</a></h3>
                                    <p> You can put one of your secondary projects here. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>
                                    <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank"><i class="fa fa-external-link"></i> Find out more</a></p>
                                </div><!--//desc-->                          
                            </div><!--//item-->
                            
                        </div><!--//content-->  
                    </div><!--//section-inner-->                 
                </section><!--//section-->
                
                <section class="projects section">
                    <div class="section-inner">
                        <h2 class="heading">Other Projects</h2>
                        <div class="content">
                            <div class="item">
                                <h3 class="title"><a href="#">Project Title Cras Lacus</a></h3>
                                <p class="summary">Provide a brief description of your project. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatu.</p>
                                <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank"><i class="fa fa-external-link"></i> Find out more</a></p>
                            </div><!--//item-->
                            <div class="item">
                                <h3 class="title"><a href="#">Project Title Cras eget lacus</a> <span class="label label-theme">Open Source</span></h3>
                                <p class="summary">Provide a brief description of your project. Maecenas ornare ultricies risus, in fermentum augue consectetur in. Vestibulum vitae mauris iaculis, sollicitudin velit in, molestie nulla. </p>
                                <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank"><i class="fa fa-external-link"></i> View on GitHub</a></p>
                            </div><!--//item-->
                            <div class="item">
                                <h3 class="title"><a href="#">Project Title Maecenas Ornare</a> <span class="label label-theme">Open Source</span></h3>
                                <p class="summary">Provide a brief description of your project. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel purus enim. Etiam tortor felis, fermentum ac ultrices sed.</p>
                                <p><a class="more-link" href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank"><i class="fa fa-external-link"></i> View on GitHub</a></p>
                            </div><!--//item-->
                            
                            <a class="btn btn-cta-secondary" href="#">More on CoderWall <i class="fa fa-chevron-right"></i></a>
                            
                        </div><!--//content-->  
                    </div><!--//section-inner-->                 
                </section><!--//section-->
                
                <section class="experience section">
                    <div class="section-inner">
                        <h2 class="heading">Work Experience</h2>
                        <div class="content">
                            <div class="item">
                                <h3 class="title">Co-Founder & Lead Developer - <span class="place"><a href="#">Startup Hub</a></span> <span class="year">(2014 - Present)</span></h3>
                                <p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt.</p>
                            </div><!--//item-->
                            <div class="item">
                                <h3 class="title">Software Engineer - <span class="place"><a href="#">Google</a></span> <span class="year">(2013 - 2014)</span></h3>
                                <p>Vivamus a tortor eu turpis pharetra consequat quis non metus. Aliquam aliquam, orci eu suscipit pellentesque, mauris dui tincidunt enim. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.</p>
                            </div><!--//item-->
                            
                            <div class="item">
                                <h3 class="title">Software Engineer - <span class="place"><a href="#">eBay</a></span> <span class="year">(2012 - 2013)</span></h3>
                                <p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>
                            </div><!--//item-->
                            
                        </div><!--//content-->  
                    </div><!--//section-inner-->                 
                </section><!--//section-->
                <section class="github section">
                    <div class="section-inner">
                        <h2 class="heading">My GitHub</h2>
                        <p>You can embed your GitHub activities using Casey Scarborough's <a href="http://caseyscarborough.com/projects/github-activity/" target="_blank">GitHub Activity Stream</a> widget.        
                        <!--//Usage: http://caseyscarborough.com/projects/github-activity/ -->                       
                        <div id="ghfeed" class="ghfeed">
                        </div><!--//ghfeed-->
                        
                    </div><!--//secton-inner-->
                </section><!--//section-->
            </div><!--//primary-->
            <div class="secondary col-md-4 col-sm-12 col-xs-12">
                 <aside class="info aside section">
                    <div class="section-inner">
                        <h2 class="heading sr-only">Basic Information</h2>
                        <div class="content">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-map-marker"></i><span class="sr-only">Location:</span>San Francisco, US</li>
                                <li><i class="fa fa-envelope-o"></i><span class="sr-only">Email:</span><a href="#">jameslee@website.com</a></li>
                                <li><i class="fa fa-link"></i><span class="sr-only">Website:</span><a href="#">http://www.website.com</a></li>
                            </ul>
                        </div><!--//content-->  
                    </div><!--//section-inner-->                 
                </aside><!--//aside-->
                
                <aside class="skills aside section">
                    <div class="section-inner">
                        <h2 class="heading">Skills</h2>
                        <div class="content">
                            <p class="intro">
                                Intro about your skills goes here. Keep the list lean and only show your primary skillset. You can always provide a link to your Linkedin or Coderwall profile so people can get more info there.</p>
                            
                            <div class="skillset">
                               
                                <div class="item">
                                    <h3 class="level-title">Python &amp; Django<span class="level-label" data-toggle="tooltip" data-placement="left" data-animation="true" title="You can use the tooltip to add more info...">Expert</span></h3>
                                    <div class="level-bar">
                                        <div class="level-bar-inner" data-level="96%">
                                        </div>                                      
                                    </div><!--//level-bar-->                                 
                                </div><!--//item-->
                                
                                <div class="item">
                                    <h3 class="level-title">Javascript &amp; jQuery<span class="level-label">Expert</span></h3>
                                    <div class="level-bar">
                                        <div class="level-bar-inner" data-level="96%">
                                        </div>                                      
                                    </div><!--//level-bar-->                                 
                                </div><!--//item-->
                                
                                <div class="item">
                                    <h3 class="level-title">HTML5, CSS3, SASS &amp; LESS<span class="level-label">Expert</span></h3>
                                    <div class="level-bar">
                                        <div class="level-bar-inner" data-level="96%">
                                        </div>                                      
                                    </div><!--//level-bar-->                                 
                                </div><!--//item-->
                                
                                <div class="item">
                                    <h3 class="level-title">Ruby on Rails<span class="level-label">Pro</span></h3>
                                    <div class="level-bar">
                                        <div class="level-bar-inner" data-level="85%">
                                        </div>                                      
                                    </div><!--//level-bar-->                                 
                                </div><!--//item-->
                                
                                <p><a class="more-link" href="#"><i class="fa fa-external-link"></i> More on Coderwall</a></p> 
                            </div>              
                        </div><!--//content-->  
                    </div><!--//section-inner-->                 
                </aside><!--//section-->
                
                <aside class="testimonials aside section">
                    <div class="section-inner">
                        <h2 class="heading">Testimonials</h2>
                        <div class="content">
                            <div class="item">
                                <blockquote class="quote">                                  
                                    <p><i class="fa fa-quote-left"></i>James is an excellent software engineer and he is passionate about what he does. You can totally count on him to deliver your projects!</p>
                                </blockquote>                
                                <p class="source"><span class="name">Tim Adams</span><br /><span class="title">Curabitur commodo</span></p>                                                             
                            </div><!--//item-->
                            
                            <p><a class="more-link" href="#"><i class="fa fa-external-link"></i> More on Linkedin</a></p> 
                            
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                
                <aside class="education aside section">
                    <div class="section-inner">
                        <h2 class="heading">Education</h2>
                        <div class="content">
                            <div class="item">                      
                                <h3 class="title"><i class="fa fa-graduation-cap"></i> MSc Psychology and Computer Science</h3>
                                <h4 class="university">University College London <span class="year">(2011-2012)</span></h4>
                            </div><!--//item-->
                            <div class="item">
                                <h3 class="title"><i class="fa fa-graduation-cap"></i> BSc Computer Science</h3>
                                <h4 class="university">University of Bristol <span class="year">(2008-2011)</span></h4>
                            </div><!--//item-->
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                            
                <aside class="languages aside section">
                    <div class="section-inner">
                        <h2 class="heading">Languages</h2>
                        <div class="content">
                            <ul class="list-unstyled">
                                <li class="item">
                                    <span class="title"><strong>English:</strong></span>
                                    <span class="level">Native Speaker <br class="visible-xs"/><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </span>
                                </li><!--//item-->
                                <li class="item">
                                    <span class="title"><strong>Spanish:</strong></span>
                                    <span class="level">Professional Proficiency <br class="visible-sm visible-xs"/><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-half"></i></span>
                                </li><!--//item-->
                            </ul>
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                
                <aside class="blog aside section">
                    <div class="section-inner">
                        <h2 class="heading">Latest Blog Posts</h2>
                        <p>You can use Sascha Depold's <a href="https://github.com/sdepold/jquery-rss" target="_blank">jQuery RSS plugin</a> to pull in your blog post feeds.</p>
                        <div id="rss-feeds" class="content">

                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                
                <aside class="list music aside section">
                    <div class="section-inner">
                        <h2 class="heading">Favourite coding music</h2>
                        <div class="content">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-headphones"></i> <a href="#">Etiam hendrerit urna nunc</a></li>
                                <li><i class="fa fa-headphones"></i> <a href="#">Ut sollicitudin in mauris non auctor</a></li>
                                <li><i class="fa fa-headphones"></i> <a href="#">Etiam hendrerit urna nunc</a></li>
                                <li><i class="fa fa-headphones"></i> <a href="#">Duis et felis bibendum</a></li>
                            </ul>
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                
                <aside class="list conferences aside section">
                    <div class="section-inner">
                        <h2 class="heading">Conferences</h2>
                        <div class="content">
                            <ul class="list-unstyled">
                                <li><i class="fa fa-calendar"></i> <a href="https://developer.apple.com/wwdc/" target="_blank">WWDC 2014</a> (San Francisco)</li>
                                <li><i class="fa fa-calendar"></i> <a href="http://hive.aigaseattle.org/">Hive</a> (Seattle)</li>
                            </ul>
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
                
                <aside class="credits aside section">
                    <div class="section-inner">
                        <h2 class="heading">Credits</h2>
                        <div class="content">
                            <ul class="list-unstyled">
                                <li><a href="http://getbootstrap.com/" target="_blank"><i class="fa fa-external-link"></i> Bootstrap 3.2</a></li>
                                <li><a href="http://fortawesome.github.io/Font-Awesome/" target="_blank"><i class="fa fa-external-link"></i> FontAwsome 4.1</a></li>
                                <li><a href="http://jquery.com/" target="_blank"><i class="fa fa-external-link"></i> jQuery</a></li>
                                <li><a href="http://caseyscarborough.com/projects/github-activity/" target="_blank"><i class="fa fa-external-link"></i> GitHub Activity Stream</a></li>
                                
                                <li><a href="https://github.com/sdepold/jquery-rss" target="_blank"><i class="fa fa-external-link"></i> jQuery RSS</a></li>
                                
                                <li>Profile image: <a href="https://www.flickr.com/photos/dotbenjamin/2577394151" target="_blank">Ben Smith</a></li>
                                <li>iPad and iPhone mocks: <a href="https://dribbble.com/perlerar" target="_blank">Regy Perlera</a></li>
                                
                            </ul>
                            
                            <hr/>
                            
                             <p>This responsive HTML5 CSS3 site template is handcrafted by UX designer <a href="https://www.linkedin.com/in/xiaoying" target="_blank">Xiaoying Riley</a> at <a href="http://themes.3rdwavemedia.com/" target="_blank">3rd Wave Media</a> for developers and is <strong>FREE</strong> under the <a class="dotted-link" href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 License</a></p>
                             <p>We will improve or add new features to this template based on users' feedback so follow us on twitter to get notified when a new version is out!</p>
                            <a class="btn btn-cta-secondary btn-follow" href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fa fa-twitter"></i> Follow us</a>
                            <a class="btn btn-cta-primary btn-download" href="http://themes.3rdwavemedia.com/website-templates/free-responsive-website-template-for-developers/" target="_blank"><i class="fa fa-download"></i> I want to download</a>
                        </div><!--//content-->
                    </div><!--//section-inner-->
                </aside><!--//section-->
              
            </div><!--//secondary-->    
        </div><!--//row-->
    </div><!--//masonry-->
    
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="container text-center">
                <small class="copyright">Designed with <i class="fa fa-heart"></i> by <a href="http://themes.3rdwavemedia.com" target="_blank">Xiaoying Riley</a> for developers</small>
        </div><!--//container-->
    </footer><!--//footer-->
 
    <!-- Javascript -->          
    <script type="text/javascript" src="assets/plugins/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="assets/plugins/jquery-rss/dist/jquery.rss.min.js"></script> 
    <!-- github activity plugin -->
    <script type="text/javascript" src="../../plugins/github-activity/dist/mustache/mustache.min.js"></script>
    <script type="text/javascript" src="../../plugins/github-activity/dist/github-activity-0.1.1.min.js"></script>
    <!-- custom js -->
    <script type="text/javascript" src="../../js/main.js"></script>   