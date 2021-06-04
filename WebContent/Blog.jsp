<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog</title>
  <jsp:include page="Library.html"></jsp:include>
</head>
<body>
  	<jsp:include page="Header.jsp"></jsp:include>
  	
  <div class="container">
<section class="banner-section">
	   	   
</section>
<section class="post-content-section">
    <div class="container">

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 post-title-block">
               
                <h1 class="text-center">Blog / T&C.</h1>
                <ul class="list-inline text-center">
                   <li> Author | Category | Date |</li>
                </ul>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-12">
						<jsp:include page="blog.html"></jsp:include>
             </div>
            <div class="col-lg-3  col-md-3 col-sm-12">
                <div class="well">
                    <h2>Subscription</h2>
                    <p>Description</p>
                    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button">Go!</button>
      </span>
    </div>
                </div>
                <div class="well">
                    <h2>Share love</h2>
                    <ul class="list-inline">
                        <li><span><i class="fa fa-heart" aria-hidden="true"></i></span></li>
                        <li><span><i class="fa fa-heart" aria-hidden="true"></i></span></li>
                        <li><span><i class="fa fa-heart" aria-hidden="true"></i></span></li>
                        <li><span><i class="fa fa-heart" aria-hidden="true"></i></span></li>
                        
                    </ul>
                </div>
                <div class="well">
                    <h2>About Author</h2>
                    <img src="" class="img-rounded" />
                    <p>
                    As hoteliers shift more and more toward becoming data scientists, the amount of data needed and available is growing at exponential rates. It's critical that this data is stored somewhere easily accessible in real time for operators and technology systems, while at the same time kept safe and secure.</p>
                    <a href="#" class="btn btn-default">Read more</a>
                </div>
                <div class="list-group">
                    <a class="list-group-item active" href="#"> <h4 class="list-group-item-heading">
						5 Watches That Can Be A Great Gift For Your Beloved
                    </h4> 
                    <p class="list-group-item-text text-dark">Valentine's Day has just passed by, a couple of weeks ago. However, that does not mean you cannot surprise your beloved with a fantastic watch. Many ...</p> </a>
                    <a class="list-group-item" href="#"> <h4 class="list-group-item-heading">Travel Accessories You Must-Have Before Your Next Trip</h4> <p class="list-group-item-text text-dark">As times are passing by, many of us are realising the importance of travelling. When one travels to different places with distinct cultures, it helps you ...</p> </a>
                    <a class="list-group-item" href="#"> <h4 class="list-group-item-heading">Tips To Consider In Your Ethnic Wear Online Shopping Spree</h4> <p class="list-group-item-text text-dark">We have reached the last quarter of the year. That also means the season of fun festivals had arrived. Whether you intend to dazzle during Navratri ...</p> </a> </div>
                <div class="well">
                    <div class="media"> <div class="media-left"> <a href="https://timesofindia.indiatimes.com/best-products/health-and-fitness/fitness-clothing/best-compression-shorts-for-men/articleshow/68198180.cms"> <img class="media-object" alt="64x64" style="width: 64px; height: 64px;" src="image/blog/News-logo/news-logo-01.png" data-holder-rendered="true"> </a> </div> <div class="media-body"> <h4 class="media-heading">Best compression shorts for men</h4> The distinct cutting-edge shape and an atypical design, these </div> </div>
                    <div class="media"> <div class="media-left"> <a href="https://timesofindia.indiatimes.com/best-products/health-and-fitness/fitness-clothing/best-compression-shorts-for-men/articleshow/68198180.cms"> <img class="media-object" alt="64x64" style="width: 64px; height: 64px;" src="image/blog/News-logo/news-logo-02.png" data-holder-rendered="true"> </a> </div> <div class="media-body"> <h4 class="media-heading">Media heading</h4> Cras sit amet nibh libero, in gravida nulla.</div> </div>
                    <div class="media"> <div class="media-left"> <a href="https://timesofindia.indiatimes.com/best-products/health-and-fitness/fitness-clothing/best-compression-shorts-for-men/articleshow/68198180.cms"> <img class="media-object" alt="64x64" style="width: 64px; height: 64px;" src="image/blog/News-logo/news-logo-03.png" data-holder-rendered="true"> </a> </div> <div class="media-body"> <h4 class="media-heading">Media heading</h4> Cras sit amet nibh libero, in gravida nulla.</div> </div>
                </div>
            </div>
        </div>
      

    </div> <!-- /container -->
</section>
  	
</div>  	
  	
  	
  	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>