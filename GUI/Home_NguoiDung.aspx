<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Home_NguoiDung.aspx.cs" Inherits="GUI.Home_NguoiDung1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="formhome" runat="server">
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
                                <h3>Danh mục</h3>
                              <%--  Danh sách loại video--%>
                                <asp:Repeater ID="rptloaiVideo" runat="server" ">
                                    <ItemTemplate>
                                        <ul class="bg-info m-2 ">
                                            <asp:Button CssClass="m-1  rounded-right text-success " ID="btn_loaisp" Width="230" runat="server" CommandArgument='<%#Eval("MaLoaiVideo")%>' Text='<%#Eval("TenLoaiVideo") %>' />
                                        </ul>
                                    </ItemTemplate>
                                </asp:Repeater>
                               <%-- <ul>
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
                                </ul>--%>
                            </div>
                            <div class="list-f-sidebar">
                                <h3>------------</h3>
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
                        <%-- Danh sách sản phẩm ở đây--%>
                        <asp:Repeater ID="rptVideo" runat="server">
                            <ItemTemplate>
                                <div class="col-md-6 col-lg-4">
                                    <div class="card text-center card-product">
                                        <div class="card-product__img bg-light">

                                            <asp:Image ID="imaVideo" CssClass="card-img-top " Width="250" Height="350" runat="server" ImageUrl='<%# "~/ThuVien/"+Eval("DuongDanVideo") %>' />

                                            <ul class="card-product__imgOverlay">
                                                <li>
                                                    <asp:LinkButton ID="linkbtn_xemVideo" CssClass="bg-danger" Width="50" Height="50" runat="server"><i class="ti-search"></i></asp:LinkButton>
                                                </li>
                                                <li>
                                                    <asp:LinkButton ID="linkbtn_TaiXuong" CssClass="bg-danger" Width="50" Height="50" runat="server" CommandName="Tải Video" CommandArgument='<%# Eval("MaVideo") %>'><i class="ti-shopping-cart"></i></asp:LinkButton>
                                                </li>
                                            </ul>
                                        </div>


                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

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
    </form>
</asp:Content>
