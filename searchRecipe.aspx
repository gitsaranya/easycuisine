<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchRecipe.aspx.cs" Inherits="searchRecipe" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>search recipe || Easy Cuisine - A Recipe Generator</title>
    <!-- Favicon -->
    <link href="./assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="./assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="./assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link type="text/css" href="./assets/css/argon.css?v=1.0.1" rel="stylesheet">
    <!-- Docs CSS -->
    <link type="text/css" href="./assets/css/docs.min.css" rel="stylesheet">
</head>
<body>
    <form id="form2" runat="server">
        <header class="header-global">
            <nav id="navbar-main" class="navbar navbar-main navbar-expand-lg navbar-transparent navbar-light headroom">
                <div class="container">
                    <a class="navbar-brand mr-lg-5" href="./index.html">
                        <img src="a.png" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse" id="navbar_global">
                        <div class="navbar-collapse-header">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="./index.html">
                                        <img src="blue.png">
                                    </a>
                                </div>
                                <div class="col-6 collapse-close">
                                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                                        <span></span>
                                        <span></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:LinkButton ValidateRequestMode="Disabled" ID="logout" runat="server" Text="Logout" CssClass="btn btn-link text-info" OnClick="logout_Click"></asp:LinkButton>
                            <asp:LinkButton ID="profile" runat="server" Text="Profile" ForeColor="Wheat" CssClass="ni ni-circle-08" OnClick="profile_Click"></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Update Password" ForeColor="Wheat" CssClass="ni ni-circle-08" OnClick="LinkButton1_Click"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="position-relative">
                <!-- Hero for FREE version -->
                <section class="section section-lg section-hero section-shaped">
                    <!-- Background circles -->
                    <div class="shape shape-style-1 shape-primary">
                        <span class="span-150"></span>
                        <span class="span-50"></span>
                        <span class="span-50"></span>
                        <span class="span-75"></span>
                        <span class="span-100"></span>
                        <span class="span-75"></span>
                        <span class="span-50"></span>
                        <span class="span-100"></span>
                        <span class="span-50"></span>
                        <span class="span-100"></span>
                    </div>
                    <div class="container shape-container d-flex align-items-center py-lg">
                        <div class="col px-0">
                            <div class="row align-items-center justify-content-center">
                                <div class="col-lg-8 text-center">
                                    <img src="a.png" style="width: 200px;" class="img-fluid">
                                    <div class="lead text-white">
                                        Search a Recipe by it's Name...
                                    </div>
                                    <div class="btn-wrapper mt-5">
                                                <asp:TextBox ID="txtSearch" placeholder="Search Item" runat="server" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>        <br />
 </div>
                                     </div>
                                <div class="btn-wrapper mt-5">
                                    <asp:DataList ID="DataList1" runat="server" BorderColor="White" BorderWidth="0px" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" CellSpacing="20">

                <ItemTemplate>

                    <table class="auto-style1" style="text-align: center" border="1">

                        <tr>

                            <td style="text-align: center">

                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("fname") %>' Width="100px" />

                            </td>

                        </tr>

                        <tr>

                            <td class="auto-style2" style="text-align: center"><strong>Recipe Name:</strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("RName") %>'></asp:Label>

                            </td>

                        </tr>

                        <tr>

                            <td style="text-align: center"><strong>Time:</strong>

                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TTK") %>'></asp:Label>&nbsp;Minutes

                            </td>

                        </tr>

                        <tr>

                            <td style="text-align: center"><strong>Ingredients:</strong>

                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ingre1") %>'></asp:Label>

                            </td>

                        </tr>

                    </table>

            </ItemTemplate>

                </asp:DataList>

        
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>
        <footer class="footer has-cards">
            <div class="container">
                <div class="row row-grid align-items-center my-md">
                    <div class="col-lg-6">
                        <h3 class="text-primary font-weight-light mb-2">Thank You For Using</h3>
                        <a href="Home.aspx">Easy Cuisine - A Recipe Generator</a>
                    </div>
                </div>
                <hr>
                <div class="row align-items-center justify-content-md-between">
                    <div class="col-md-6">
                    </div>
                </div>
            </div>
        </footer>
        <!-- Core -->
        <script src="./assets/vendor/jquery/jquery.min.js"></script>
        <script src="./assets/vendor/popper/popper.min.js"></script>
        <script src="./assets/vendor/bootstrap/bootstrap.min.js"></script>
        <script src="./assets/vendor/headroom/headroom.min.js"></script>
        <!-- Optional JS -->
        <script src="./assets/vendor/onscreen/onscreen.min.js"></script>
        <script src="./assets/vendor/nouislider/js/nouislider.min.js"></script>
        <script src="./assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <!-- Argon JS -->
        <script src="./assets/js/argon.js?v=1.0.1"></script>
    </form>
</body>
</html>
