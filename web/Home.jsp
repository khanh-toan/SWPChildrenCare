
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Medilab Bootstrap Template - Index</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Medilab - v4.10.0
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>
        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex justify-content-between">
                <div class="contact-info d-flex align-items-center">
                    <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">contact@example.com</a>
                    <i class="bi bi-phone"></i> +1 5589 55488 55
                </div>
                <div class="d-none d-lg-flex social-links align-items-center">
                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
                </div>
            </div>
        </div>

        <%@include file="Component/Header.jsp"%>

        <!-- ======= Hero Section ======= -->
        <section id="hero-slider" class="hero-slider">
            <div class="container-md" data-aos="fade-in">
                <div class="row">
                    <div class="col-12">
                        <div class="swiper sliderFeaturedPosts">
                            <div class="swiper-wrapper">
                                <c:forEach items="${sliderList}" var="slide">
                                    <div class="swiper-slide">
                                        <a href="/project_swp391/service-detail?service_id=${slide.service_id}" class="img-bg d-flex align-items-end">
                                            <div class="img-bg-inner">
                                                <h2>${slide.service_title}</h2>
                                                <p>${slide.notes}</p>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="custom-swiper-button-next">
                                <span class="bi-chevron-right"></span>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Hero -->

        <main id="main">
            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
                            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>
                        </div>

                        <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                            <h3>Enim quis est voluptatibus aliquid consequatur fugiat</h3>
                            <p>Esse voluptas cumque vel exercitationem. Reiciendis est hic accusamus. Non ipsam et sed minima temporibus laudantium. Soluta voluptate sed facere corporis dolores excepturi. Libero laboriosam sint et id nulla tenetur. Suscipit aut voluptate.</p>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-fingerprint"></i></div>
                                <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                                <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-gift"></i></div>
                                <h4 class="title"><a href="">Nemo Enim</a></h4>
                                <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-atom"></i></div>
                                <h4 class="title"><a href="">Dine Pad</a></h4>
                                <p class="description">Explicabo est voluptatum asperiores consequatur magnam. Et veritatis odit. Sunt aut deserunt minus aut eligendi omnis</p>
                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <!-- End About Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="count-box">
                                <i class="fas fa-user-md"></i>
                                <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Doctors</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                            <div class="count-box">
                                <i class="far fa-hospital"></i>
                                <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Departments</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-flask"></i>
                                <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Research Labs</p>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <i class="fas fa-award"></i>
                                <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
                                <p>Awards</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Counts Section -->

            <!-- ======= Features Section ======= -->
            <c:if test="${listSetting.get(0).setting_status==true}">
                <section id="services" class="features">
                    <div class="container" data-aos="fade-up">
                        <div class="section-title">
                            <h2>All Services</h2>
                            <p>There are many servies in Children's Care, Choose Your Category To See</p>
                        </div>
                        <ul class="nav nav-tabs row gy-4 d-flex">
                            <c:forEach items="${requestScope.categoryList}" var="cate">
                                <li class="nav-item col-6 col-md-4 col-lg-2">
                                    <a  class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-${cate.category_id}" href="index?cid=${cate.category_id}">
                                        <i class="${cate.icon}"></i>
                                        <h4>${cate.category_name}</h4>
                                    </a>
                                </li><!-- End Tab 1 Nav -->
                            </c:forEach>
                        </ul>

                        <div class="tab-content">
                            <c:forEach items="${requestScope.list}" var="servicee">
                                <c:forEach items="${servicee}" var="service">
                                    <div class="tab-pane" id="tab-${service.category_id}">
                                        <div class="row gy-4">
                                            <div class="col-lg-8 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="100"></br>                                
                                                <center>
                                                    <h3>${service.service_title}</h3>
                                                </center></br>                                             
                                                <p>${service.services_bi}</p>
                                                <p class="fst-italic">
                                                    Discount Price: ${service.service_discount}$
                                                </p>
                                                <p>Old Price: ${service.service_price}$</p>
                                                Rate Star: ${service.service_rateStar} <i class="bi bi-star-fill"></i>
                                                <div class="text-center mt-auto">
                                                    <a href="service-detail?service_id=${service.service_id}" class="buy-btn"><h5>MORE DETAILS ...</h5></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 order-1 order-lg-2 text-center" data-aos="fade-up" data-aos-delay="200">
                                                <img src="./resouce/image/service/${service.image.get(0).getImage_link()}" alt="" class="img-fluid">
                                            </div>
                                        </div>
                                    </div><!-- End Tab Content 1 -->
                                </c:forEach>
                            </c:forEach>
                        </div>
                    </div>
                </section><!-- End Features Section -->
            </c:if>

            <!-- ======= Pricing Section ======= -->
            <c:if test="${listSetting.get(2).setting_status==true}">
                <section id="hotservices" class="pricing">
                    <div class="container" data-aos="fade-up">
                        <div class="section-title">
                            <h2>HOT SERVICES</h2>
                            <p>There are best services people usually buy.</p>
                        </div>
                        <div class="row gy-4">
                            <c:forEach items="${ListHotService}" var="hots">
                                <div class="col-lg-4" data-aos="zoom-in" data-aos-delay="200">
                                    <div class="pricing-item">
                                        <div class="pricing-header">
                                            <h3>${hots.service_title}</h3></br>
                                            <h4><sup>$</sup>${hots.service_price}<span>  3̶̶9̶̶9̶$</span></h4>
                                        </div>

                                        <center><p>${hots.services_bi}</p></center>
                                        </br>
                                        <center>${hots.service_rateStar} <i class="bi bi-star-fill"></i></center>
                                        </br>
                                        </br>
                                        <div class="text-center mt-auto">
                                            <a href="#" class="buy-btn">Buy Now</a>
                                        </div>
                                    </div>
                                </div><!-- End Pricing Item -->
                            </c:forEach>
                        </div>
                    </div>
                </section><!-- End Pricing Section -->
            </c:if>

            <!-- ======= Recent Blog Posts Section ======= -->
            <c:if test="${listSetting.get(3).setting_status==true}">
                <section id="blogs" class="recent-blog-posts">
                    <div class="container" data-aos="fade-up">
                        <div class="section-title">
                            <h2>Blogs</h2>
                            <p>There are many blogs in Children's Care</p>
                        </div>
                        <div class="row">
                            <c:forEach items="${requestScope.blogList}" var="blog">
                                <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                                    <div class="post-box">
                                        <div class="post-img"><img src="./resouce/image/${blog.blog_image}" class="img-fluid" alt=""></div>
                                        <div class="meta">
                                            <span class="post-date">${blog.blog_created_date}</span>
                                            <span class="post-author"> / ${blog.user_id}</span>
                                        </div>
                                        <h4 class="post-title">${blog.title}</h4>
                                        <p>${blog.bi}</p>
                                        <!--                                <a  class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>-->
                                    </div>
                                </div>
                                <br>
                            </c:forEach>
                        </div>
                    </div>
                    </br>
                    </br>
                    </br>
                    <div class="text-center mt-auto">
                        <a href="Blogs" class="buy-btn"><h5>MORE BLOGS ...</h5></a>
                    </div>
                </section><!-- End Recent Blog Posts Section -->
            </c:if>    
                
            <!-- ======= Doctors Section ======= -->
            <c:if test="${listSetting.get(4).setting_status==true}">
                <section id="doctors" class="doctors">
                    <div class="container">
                        <div class="section-title">
                            <h2>Doctors</h2>
                            <p>A team of professional doctors with many achievements and research awards with Master's and Doctoral degrees from all over Southeast Asia such as Eastern Laos, Cambodia, Thailand, Malaysia,... high quality stars with a great team of technicians.</p>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="member d-flex align-items-start">
                                    <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
                                    <div class="member-info">
                                        <h4>Bác sĩ Hào</h4>
                                        <span>Chief Medical Officer</span>
                                        <p>TOP 5 Bác sĩ chuyên khoa phổi hàng đầu thế giới.</p>
                                        <div class="social">
                                            <a href=""><i class="ri-twitter-fill"></i></a>
                                            <a href=""><i class="ri-facebook-fill"></i></a>
                                            <a href=""><i class="ri-instagram-fill"></i></a>
                                            <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-4 mt-lg-0">
                                <div class="member d-flex align-items-start">
                                    <div class="pic"><img src="assets/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
                                    <div class="member-info">
                                        <h4>Bác sĩ Khoa</h4>
                                        <span>Anesthesiologist</span>
                                        <p>TOP 5 Bác sĩ cứu người giỏi nhất châu Á.</p>
                                        <div class="social">
                                            <a href=""><i class="ri-twitter-fill"></i></a>
                                            <a href=""><i class="ri-facebook-fill"></i></a>
                                            <a href=""><i class="ri-instagram-fill"></i></a>
                                            <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-4">
                                <div class="member d-flex align-items-start">
                                    <div class="pic"><img src="assets/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
                                    <div class="member-info">
                                        <h4>Bác sĩ Hoàn</h4>
                                        <span>Cardiology</span>
                                        <p>Quisquam facilis cum velit laborum corrupti fuga rerum quia</p>
                                        <div class="social">
                                            <a href=""><i class="ri-twitter-fill"></i></a>
                                            <a href=""><i class="ri-facebook-fill"></i></a>
                                            <a href=""><i class="ri-instagram-fill"></i></a>
                                            <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-4">
                                <div class="member d-flex align-items-start">
                                    <div class="pic"><img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
                                    <div class="member-info">
                                        <h4>Bác sĩ Trường</h4>
                                        <span>Neurosurgeon</span>
                                        <p>Dolorum tempora officiis odit laborum officiis et et accusamus</p>
                                        <div class="social">
                                            <a href=""><i class="ri-twitter-fill"></i></a>
                                            <a href=""><i class="ri-facebook-fill"></i></a>
                                            <a href=""><i class="ri-instagram-fill"></i></a>
                                            <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section><!-- End Doctors Section -->
            </c:if>
            
                
            <!-- ======= Testimonials Section ======= -->
            <c:if test="${listSetting.get(5).setting_status==true}">

                <section id="testimonials" class="testimonials">
                    <div class="container">
                        <div class="container">

                            <div class="section-title">
                                <h2>Feedback About Children's Care</h2>
                                <p>There are some random feedback about services of Children's Care System, Thanks every body so much for love their system.</p>
                            </div>
                        </div>
                        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                            <div class="swiper-wrapper">

                                <c:forEach items="${listFeedback}" var="i">
                                    <div class="swiper-slide">
                                        <div class="testimonial-wrap">
                                            <div class="testimonial-item">
                                                <img src="./resouce/image/${i.feedback_image}" class="testimonial-img" alt="">
                                                <h3>${i.name}
                                                    <div class="d-flex flex-row p-4">
                                                        <div class="ratings m-auto">
                                                            <c:forEach begin="1" end="${i.rateStar}">
                                                                <span class="fa fa-star checked"></span>
                                                            </c:forEach>
                                                            <c:forEach begin="1" end="${5-i.rateStar}">
                                                                <span class="fa fa-star"></span>
                                                            </c:forEach>
                                                        </div>
                                                        <br>
                                                    </div></h3>
                                                <p>
                                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                                    ${i.content}
                                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                                </p>
                                            </div>
                                        </div>
                                    </div><!-- End testimonial item -->
                                </c:forEach>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>

                    </div>
                </section><!-- End Testimonials Section -->
            </c:if>

            <!-- ======= Team Section ======= -->
            <section id="team" class="team section-bg">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>Our Developer Team</h2>
                        <p>There are many developer from FPT University with love.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="100">
                                <div class="member-img">
                                    <img src="./resouce/image/khoa.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Ngọc Khoa</h4>
                                    <span>Chief Executive Officer</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="./resouce/image/hoanonfire.jpg" height="300px"  class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Ngọc Hoàn</h4>
                                    <span>Product Manager</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="200">
                                <div class="member-img">
                                    <img src="./resouce/image/hao.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Nguyễn Phong Hào</h4>
                                    <span>Product Manager</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="300">
                                <div class="member-img">
                                    <img src="./resouce/image/truong.jpg" class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Trịnh Xuân Trường</h4>
                                    <span>CTO</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2dot4 col-md-6 d-flex align-items-stretch">
                            <div class="member" data-aos="fade-up" data-aos-delay="400">
                                <div class="member-img">
                                    <img src="./resouce/image/date.jpg"class="img-fluid" alt="">
                                    <div class="social">
                                        <a href=""><i class="bi bi-twitter"></i></a>
                                        <a href=""><i class="bi bi-facebook"></i></a>
                                        <a href=""><i class="bi bi-instagram"></i></a>
                                        <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div>
                                </div>
                                <div class="member-info">
                                    <h4>Kiều Minh Đạt</h4>
                                    <span>Accountant</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!-- End Team Section -->    
        </main><!-- End #main -->

        <%@include file="Component/Footer.jsp"%>

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>