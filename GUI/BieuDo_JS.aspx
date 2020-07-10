<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="BieuDo_JS.aspx.cs" Inherits="GUI.BieuDo_JS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    



      <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                           Biểu Đồ JS
                        </h1>
              <ol class="breadcrumb">
					  <li><a href="Home_Admin.aspx">Trang chủ</a></li>
					  <li><a href="Home_Admin.aspx">Biểu đồ</a></li>
					  <li class="active">Biểu đồ JS</li>
					</ol> 
					
						
     <div id="page-inner"> 
             
			        <div class="row">
                        <div class="col-sm-6 col-xs-12">  
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Line Chart</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <canvas id="line-chart" class="chart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Bar Chart</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <canvas id="bar-chart" class="chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Radar Chart</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <canvas id="radar-chart" class="chart"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12">
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Polar Area Chart</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <canvas id="polar-area-chart" class="chart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Pie & Doughnut Chart</div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <canvas id="pie-chart" class="chart"></canvas>
                                </div>
                            </div>
                        </div>
						
						     <div class="col-sm-6 col-xs-12">
                            <div class="panel panel-default chartJs">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title">Line Chart</div>
                                    </div>
                                </div>
								  <div class="panel-body">
                                     <canvas id="jumbotron-line-chart" class="chart no-padding"></canvas>
                                </div> 
                            </div>
                        </div>
                    </div>
         </div>
    


   <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Chart Js -->
    <script type="text/javascript" src="assets/js/Chart.min.js"></script>  
    <script type="text/javascript" src="assets/js/chartjs.js"></script> 
     <!-- Morris Chart Js -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
   
</asp:Content>
