
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Inner Page - Medilab Bootstrap Template</title>
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
        <style>
            .sidebar {
                min-height: calc(100vh - 70px);
                background: #fff;
                font-weight: normal;
                padding: 0;
                width: 244px;
                z-index: 11;
                transition: width 0.25s ease, background 0.25s ease;
                -webkit-transition: width 0.25s ease, background 0.25s ease;
                -moz-transition: width 0.25s ease, background 0.25s ease;
                -ms-transition: width 0.25s ease, background 0.25s ease;
            }
            .content-wrapper {
                background: #fff;
                padding: 1.875rem 1.75rem;
                width: 100%;
                -webkit-flex-grow: 1;
                flex-grow: 1;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 1px solid rgba(0, 0, 0, 0.125);
                border-radius: 0.25rem;
                color: #000;
            }
            .footer {
                background: #fff;
                padding: 20px 1rem;
                transition: all 0.25s ease;
                -moz-transition: all 0.25s ease;
                -webkit-transition: all 0.25s ease;
                -ms-transition: all 0.25s ease;
                font-size: calc(0.875rem - 0.05rem);
                font-weight: 300;
            }
            .sidebar .nav .nav-item.active > .nav-link {
                background: gray;
                position: relative;
            }
            .sidebar .nav .nav-item .nav-link {
                display: -webkit-flex;
                display: flex;
                -webkit-align-items: center;
                align-items: center;
                white-space: nowrap;
                padding: 0.8rem 10px 0.8rem 1.188rem;
                color: #000;
                -webkit-transition-duration: 0.45s;
                -moz-transition-duration: 0.45s;
                -o-transition-duration: 0.45s;
                transition-duration: 0.45s;
                transition-property: color;
                -webkit-transition-property: color;
                height: 46px;
                border-radius: 0px 100px 100px 0px;
            }
            .sidebar .sidebar-brand-wrapper {
                transition: width 0.25s ease, background 0.25s ease;
                -webkit-transition: width 0.25s ease, background 0.25s ease;
                -moz-transition: width 0.25s ease, background 0.25s ease;
                -ms-transition: width 0.25s ease, background 0.25s ease;
                background: #fff;
                width: 244px;
                height: 70px;
            }
            .navbar .navbar-menu-wrapper {
                transition: width 0.25s ease;
                -webkit-transition: width 0.25s ease;
                -moz-transition: width 0.25s ease;
                -ms-transition: width 0.25s ease;
                box-shadow: 20px 19px 34px -15px rgb(0 0 0 / 50%);
                -webkit-box-shadow: 20px 19px 34px -15px rgb(0 0 0 / 50%);
                -moz-box-shadow: 20px 19px 34px -15px rgba(0, 0, 0, 0.5);
                color: #000;
                padding-left: 15px;
                padding-right: 15px;
                width: 100%;
                height: 70px;
            }
            .navbar {
                font-weight: normal;
                background: #fff;
                left: 244px;
                transition: left 0.25s ease;
                -webkit-transition: left 0.25s ease;
                -moz-transition: left 0.25s ease;
                -ms-transition: left 0.25s ease;
            }
            .navbar .navbar-menu-wrapper .search input {
                background: #fff;
                color: #000;
                padding: 13px 20px 11px 20px;
                border: 1px solid #2c2e33;
            }
            .card .card-title {
                color: #000;
                margin-bottom: 1.125rem;
                text-transform: capitalize;
            }
            .sidebar .nav .nav-item.profile .profile-desc .profile-name h5 {
                white-space: nowrap;
                color: #000;
            }
        </style>
        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <jsp:include page="assets/module/Header_Admin.jsp" flush="true"/> 
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-9">
                                            <div class="d-flex align-items-center align-self-start">
                                                <h3 class="mb-0">${countReserSuccess}</h3>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                        </div>
                                    </div>
                                    <h6 class="text-muted font-weight-normal">Reservations Success</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-9">
                                            <div class="d-flex align-items-center align-self-start">
                                                <h3 class="mb-0">${countReserCencelled}</h3>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                        </div>
                                    </div>
                                    <h6 class="text-muted font-weight-normal">Reservations Cancelled</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-9">
                                            <div class="d-flex align-items-center align-self-start">
                                                <h3 class="mb-0">${countReserSubmited}</h3>

                                            </div>
                                        </div>
                                        <div class="col-3">

                                        </div>
                                    </div>
                                    <h6 class="text-muted font-weight-normal">Reservations Submit</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-9">
                                            <div class="d-flex align-items-center align-self-start">
                                                <h3 class="mb-0">${RevenuesAll} $</h3>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="icon icon-box-success ">
                                                <span class="mdi mdi-arrow-top-right icon-item"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <h6 class="text-muted font-weight-normal">Revenues All</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Revenues by Category</h4>
                                    <div id="chart1">

                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 grid-margin stretch-card">
                            <div class="card">
                                <div id="chart">

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-6 col-xl-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex flex-row justify-content-between">
                                        <h4 class="card-title">Messages</h4>
                                        <p class="text-muted mb-1 small">View all</p>
                                    </div>
                                    <div class="preview-list">
                                        <div class="preview-item border-bottom">
                                            <div class="preview-thumbnail">
                                                <img src="assets/images/faces/face6.jpg" alt="image" class="rounded-circle" />
                                            </div>
                                            <div class="preview-item-content d-flex flex-grow">
                                                <div class="flex-grow">
                                                    <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                                        <h6 class="preview-subject">Leonard</h6>
                                                        <p class="text-muted text-small">5 minutes ago</p>
                                                    </div>
                                                    <p class="text-muted">Well, it seems to be working now.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="preview-item border-bottom">
                                            <div class="preview-thumbnail">
                                                <img src="assets/images/faces/face8.jpg" alt="image" class="rounded-circle" />
                                            </div>
                                            <div class="preview-item-content d-flex flex-grow">
                                                <div class="flex-grow">
                                                    <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                                        <h6 class="preview-subject">Luella Mills</h6>
                                                        <p class="text-muted text-small">10 Minutes Ago</p>
                                                    </div>
                                                    <p class="text-muted">Well, it seems to be working now.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="preview-item border-bottom">
                                            <div class="preview-thumbnail">
                                                <img src="assets/images/faces/face9.jpg" alt="image" class="rounded-circle" />
                                            </div>
                                            <div class="preview-item-content d-flex flex-grow">
                                                <div class="flex-grow">
                                                    <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                                        <h6 class="preview-subject">Ethel Kelly</h6>
                                                        <p class="text-muted text-small">2 Hours Ago</p>
                                                    </div>
                                                    <p class="text-muted">Please review the tickets</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="preview-item border-bottom">
                                            <div class="preview-thumbnail">
                                                <img src="assets/images/faces/face11.jpg" alt="image" class="rounded-circle" />
                                            </div>
                                            <div class="preview-item-content d-flex flex-grow">
                                                <div class="flex-grow">
                                                    <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                                        <h6 class="preview-subject">Herman May</h6>
                                                        <p class="text-muted text-small">4 Hours Ago</p>
                                                    </div>
                                                    <p class="text-muted">Thanks a lot. It was easy to fix it .</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-xl-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Order Status</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </th>
                                                    <th> Client Name </th>
                                                    <th> Order No </th>
                                                    <th> Product Cost </th>
                                                    <th> Project </th>
                                                    <th> Payment Mode </th>
                                                    <th> Start Date </th>
                                                    <th> Payment Status </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img src="assets/images/faces/face1.jpg" alt="image" />
                                                        <span class="pl-2">Hello, Admin</span>
                                                    </td>
                                                    <td> 02312 </td>
                                                    <td> $14,500 </td>
                                                    <td> Dashboard </td>
                                                    <td> Credit card </td>
                                                    <td> 04 Dec 2019 </td>
                                                    <td>
                                                        <div class="badge badge-outline-success">Approved</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img src="assets/images/faces/face2.jpg" alt="image" />
                                                        <span class="pl-2">Estella Bryan</span>
                                                    </td>
                                                    <td> 02312 </td>
                                                    <td> $14,500 </td>
                                                    <td> Website </td>
                                                    <td> Cash on delivered </td>
                                                    <td> 04 Dec 2019 </td>
                                                    <td>
                                                        <div class="badge badge-outline-warning">Pending</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img src="assets/images/faces/face5.jpg" alt="image" />
                                                        <span class="pl-2">Lucy Abbott</span>
                                                    </td>
                                                    <td> 02312 </td>
                                                    <td> $14,500 </td>
                                                    <td> App design </td>
                                                    <td> Credit card </td>
                                                    <td> 04 Dec 2019 </td>
                                                    <td>
                                                        <div class="badge badge-outline-danger">Rejected</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img src="assets/images/faces/face3.jpg" alt="image" />
                                                        <span class="pl-2">Peter Gill</span>
                                                    </td>
                                                    <td> 02312 </td>
                                                    <td> $14,500 </td>
                                                    <td> Development </td>
                                                    <td> Online Payment </td>
                                                    <td> 04 Dec 2019 </td>
                                                    <td>
                                                        <div class="badge badge-outline-success">Approved</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="form-check form-check-muted m-0">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" class="form-check-input">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <img src="assets/images/faces/face4.jpg" alt="image" />
                                                        <span class="pl-2">Sallie Reyes</span>
                                                    </td>
                                                    <td> 02312 </td>
                                                    <td> $14,500 </td>
                                                    <td> Website </td>
                                                    <td> Credit card </td>
                                                    <td> 04 Dec 2019 </td>
                                                    <td>
                                                        <div class="badge badge-outline-success">Approved</div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="assets/js/dashboard.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script>
        let all = []
        let success = []
        let date = []

        <c:forEach items="${requestScope.listAllRes}" var="p3">
        all.push("${p3.count}")
        date.push("${p3.date}")
        </c:forEach>

        <c:forEach items="${requestScope.listSuccessRes}" var="p4">
        success.push("${p4.count}")
        </c:forEach>

        var options = {
            series: [{
                    name: 'Success',
                    data: all
                }, {
                    name: 'All',
                    data: success
                }],
            chart: {
                height: 350,
                type: 'area'
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                curve: 'smooth'
            },
            xaxis: {
                type: 'datetime',
                categories: date},
            tooltip: {
                x: {
                    format: 'dd/MM/yy'
                },
            },
        };

        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();

        let tt = []
        let cate = []

        <c:forEach items="${requestScope.cateList}" var="p">
        cate.push("${p.category_name}")
        </c:forEach>
        <c:forEach items="${requestScope.revenuesOfCate}" var="p1">
        tt.push("${p1}")
        </c:forEach>


        var options = {
            series: tt,
            chart: {
                height: 400,
                type: 'radialBar',
            },
            plotOptions: {
                radialBar: {
                    offsetY: 0,
                    startAngle: 0,
                    endAngle: 270,
                    hollow: {
                        margin: 5,
                        size: '30%',
                        background: 'transparent',
                        image: undefined,
                    },
                    dataLabels: {
                        name: {
                            show: false,
                        },
                        value: {
                            show: false,
                        }
                    }
                }
            },
            colors: ['#1ab7ea', '#0084ff', '#39539E', '#0077B5'],
            labels: cate,
            legend: {
                show: true,
                floating: true,
                fontSize: '16px',
                position: 'left',
                offsetX: 1,
                offsetY: 1,
                labels: {
                    useSeriesColors: true,
                },
                markers: {
                    size: 0
                },
                formatter: function (seriesName, opts) {
                    return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex] + " $"
                },
                itemMargin: {
                    vertical: 3
                }
            },
            responsive: [{
                    breakpoint: 480,
                    options: {
                        legend: {
                            show: false
                        }
                    }
                }]
        };

        var chart = new ApexCharts(document.querySelector("#chart1"), options);
        chart.render();



        var options = {
            series: [{
                    name: 'Net Profit',
                    data: [44, 55, 57, 56, 61, 58, 63, 60, 66]
                }, {
                    name: 'Revenue',
                    data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
                }, {
                    name: 'Free Cash Flow',
                    data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
                }],
            chart: {
                type: 'bar',
                height: 350
            },
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '55%',
                    endingShape: 'rounded'
                },
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                show: true,
                width: 2,
                colors: ['transparent']
            },
            xaxis: {
                categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
            },
            yaxis: {
                title: {
                    text: '$ (thousands)'
                }
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return "$ " + val + " thousands"
                    }
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#chart2"), options);
        chart.render();

    </script>
    <!-- End custom js for this page -->
</body>
</html>
