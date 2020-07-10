<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Fuvavi</title>

    <link rel="icon" href="favicon.png">
    <link rel="stylesheet" type="text/css" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="libs/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="libs/owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <div class="wrapper">
       
        <header id="header" class="f-header">
            <nav class="navbar navbar-expand-md fixed-top">
                <div class="container">
                    <div class="btn-menu-mb">
                        <a href="javascript:void(0)" data-target="#fvv-menu-mb" data-toggle="modal">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="col-3 f-logo">
                        <a class="navbar-brand" href="#">
                            <img src="images/logo-fuvavi.png" alt="">
                        </a>
                    </div>

                    <div class="navbar-collapse" id="f-navbar-search">
                        <div class="mr-auto f-navbar-search">
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control transition" type="text" placeholder="Search" aria-label="Search" id="nav-input-search">
                                <button class="btn button-default my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>

                        <div class="ml-auto list-action-nav">
                            <div class="f-search-mb">
                                <a href="#" class="dropdown-toggle" id="dropdown-search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-search" aria-hidden="true"></i></a>

                                <div class="dropdown-menu" aria-labelledby="dropdown-search">
                                    <form class="dropdown-search-mb">
                                        <input class="form-control transition" type="text" placeholder="Type to search" aria-label="Search" id="nav-input-search-mb">
                                        <button class="btn button-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>
                            </div>
                            <div class="action-nav ">
                                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bell icon-animated-bell" aria-hidden="true"></i><span class="badge badge-pill badge-danger">2</span></a>
                                <div class="dropdown-menu f-notification">
                                    <h3>Thông Báo</h3>
                                    <a class="dropdown-item" href="#">
                                        <div class="f-noti-thumn">
                                            <img src="images/fuvavi-thumnail.jpg" alt="">
                                        </div>
                                        <p>Đăng kí nhận thông báo để cập nhật bài viết mới nhất</p>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <div class="f-noti-thumn">
                                            <img src="images/fuvavi-thumnail.jpg" alt="">
                                        </div>
                                        <p>Đăng kí nhận thông báo để cập nhật bài viết mới nhất</p>
                                    </a>
                                </div>
                            </div>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="Login.aspx">Đăng Nhập</a>
                                    <a class="dropdown-item" href="SignUp.aspx">Đăng ký</a>
                                   
                                </div>
                            </li>
                        </div>
                    </div>
                </div>
            </nav>

        </header>
        <!-- !HEADER -->

        <!-- menu mobile -->
        <div class="modal left fade" id="fvv-menu-mb" tabindex="-1" role="dialog" aria-labelledby="f-menu-mb-label">
            <div class="modal-dialog" role="document">
                <div class="fvv-menu-mb-header">
                    <div class="btn-menu-mb">
                        <a href="javascript:void(0)" data-dismiss="modal">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="logo">
                        <a href="#">
                            <img src="images/logo-fuvavi.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="modal-content">
                    <div class="fvv-sidebar">
                    </div>
                </div>
            </div>
        </div>
        <div class="f-content">
            <div class="container">
                <div class="row flex-xl-nowrap">
                    <div class="col-12 col-md-3 col-xl-3 fvv-sidebar">

                        <div class="fvv-sidebar-content">

                            <div class="list-f-sidebar">
                                <h3>Danh sách phát</h3>
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-desktop" aria-hidden="true"></i>Thịnh Hành
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-music" aria-hidden="true"></i>Âm Nhạc
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-film" aria-hidden="true"></i>Phim
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-child" aria-hidden="true"></i>Trẻ Em
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-motorcycle" aria-hidden="true"></i>Giải Trí
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-futbol-o" aria-hidden="true"></i>Thể Thao
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-gamepad" aria-hidden="true"></i>Trò Chơi
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="list-f-sidebar">
                                <h3>Danh mục</h3>
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-bookmark" aria-hidden="true"></i>Lịch sử
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-history" aria-hidden="true"></i>Mới nhất 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-star" aria-hidden="true"></i>Xem nhiều
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="list-f-sidebar">
                                <h3>Kênh Đăng Ký</h3>
                                <ul class="friend-list">
                                    <li>
                                        <a href="#">
                                            <img src="http://graph.facebook.com/724310231098859/picture" alt="">
                                            <span>Fuvavi.com</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="http://graph.facebook.com/724310231098859/picture" alt="">
                                            <span>Fuvavi.com</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="http://graph.facebook.com/724310231098859/picture" alt="">
                                            <span>Fuvavi.com</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="http://graph.facebook.com/724310231098859/picture" alt="">
                                            <span>Fuvavi.com</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="http://graph.facebook.com/724310231098859/picture" alt="">
                                            <span>Fuvavi.com</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-9 col-xl-9 fvv-content">
                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Video Mới Nhất</h2>
                            <div class="fvv-content-body">
                                <div id="new-post-slide" class="owl-carousel new-post-slide slide-style">
                                    <div class="item">
										<div class="new-post-item">
											<div class="new-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-white">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-white">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                    <div class="item">
										<div class="new-post-item">
											<div class="new-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-white">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-white">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                    <div class="item">
										<div class="new-post-item">
											<div class="new-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-white">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-white">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Thịnh hành</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide" class="owl-carousel cate-post-slide slide-style">
                                    	<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Âm nhạc</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    <div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Phim</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    	<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Trẻ em</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    	<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Giải trí</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    <%--<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>--%>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Thể thao</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    <%--	<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="item">
											<div class="cate-post-item">
												<div class="cate-post-item-inner">
													<a href="/">
														<div class="post-avatar">
															<img src="images/iphonex.jpg" alt="iphone x">
														</div>
														<div class="post-content">
															<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
															<p class="text-gray">Công nghệ | 2 giờ trước</p>
														</div>
													</a>
												</div>
											</div>
										</div>--%>
                                </div>
                            </div>
                        </div>

                        <div class="fvv-content-box">
                            <h2 class="fvv-content-title">Trò chơi</h2>
                            <div class="fvv-content-body">
                                <div id="cate-post-slide-2" class="owl-carousel cate-post-slide slide-style">
                                    <%--<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="cate-post-item">
											<div class="cate-post-item-inner">
												<a href="/">
													<div class="post-avatar">
														<img src="images/iphonex.jpg" alt="iphone x">
													</div>
													<div class="post-content">
														<h3 class="text-default">Cận cảnh iPhone X: "Vũ khí" bí mật của Apple.</h3>
														<p class="text-gray">Công nghệ | 2 giờ trước</p>
													</div>
												</a>
											</div>
										</div>
									</div>--%>
                                </div>
                            </div>
                        </div>

                        <div class="f-footer">
                            <p>Copyright © 2017 <a href="#">fuvavi.com</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="libs/popper/umd/popper.js"></script>
        <script type="text/javascript" src="libs/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="libs/owlcarousel/owl.carousel.min.js"></script>
        <script type="text/javascript" src="js/main.js"></script>

        <script type="text/javascript">
            $('.carousel').owlCarousel({
                loop: false,
                margin: 0,
                nav: true,
                dots: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 1
                    },
                    1000: {
                        items: 1
                    }
                },
                navText: ["<i class='fa fa-chevron-left' aria-hidden='true'></i>", "<i class='fa fa-chevron-right' aria-hidden='true'></i>"]
            })
        </script>

        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '131375914163212',
                    autoLogAppEvents: true,
                    xfbml: true,
                    version: 'v2.11'
                });
            };
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) { return; }
                js = d.createElement(s); js.id = id;
                js.src = "https://connect.facebook.net/vi_VN/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

        </script>
</body>
</html>
