<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Design System for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>INGREDIENT || Easy Cuisine - A Recipe Generator</title>
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
                        <img src="./assets/img/brand/blue.png">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse" id="navbar_global">
                        <div class="navbar-collapse-header">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="./index.html">
                                        <img src="./assets/img/brand/blue.png">
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
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Update Password" ForeColor="Wheat" CssClass="ni ni-circle-08" OnClick="LinkButton_Click"></asp:LinkButton>
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
                    <div class="container shape-container d-flex align-items-center py-lg">
                        <div class="col px-0">
                            <div id="contentDiv1">
                                <asp:CheckBox ID="D101" runat="server" Text="milk" />
                                <asp:CheckBox ID="D102" runat="server" Text="paneer" />
                                <asp:CheckBox ID="D103" runat="server" Text="ghee" />
                                <asp:CheckBox ID="F101" runat="server" Text="mango" />
                                <asp:CheckBox ID="F102" runat="server" Text="avocado" />
                                <asp:CheckBox ID="F103" runat="server" Text="banana" />
                                <asp:CheckBox ID="G101" runat="server" Text="corn flour" />
                                <asp:CheckBox ID="G102" runat="server" Text="rice" />
                                <asp:CheckBox ID="G103" runat="server" Text="oats" />
                                <asp:CheckBox ID="G104" runat="server" Text="mustard" />
                                <asp:CheckBox ID="G105" runat="server" Text="wheat flour" />
                                <asp:CheckBox ID="L101" runat="server" Text="soya chunks" />
                                <asp:CheckBox ID="L102" runat="server" Text="rajma" />
                                <asp:CheckBox ID="L103" runat="server" Text="urad dal" />
                                <asp:CheckBox ID="L104" runat="server" Text="fenugreek seeds" />
                                <asp:CheckBox ID="M101" runat="server" Text="tea powder" />
                                <asp:CheckBox ID="M102" runat="server" Text="coffee powder" />
                                <asp:CheckBox ID="M103" runat="server" Text="water" />
                                <asp:CheckBox ID="M104" runat="server" Text="salt" />
                                <asp:CheckBox ID="M105" runat="server" Text="oil" />
                                <asp:CheckBox ID="M106" runat="server" Text="sugar" />
                                <asp:CheckBox ID="M107" runat="server" Text="lemon juice" />
                                <asp:CheckBox ID="M108" runat="server" Text="honey" />
                                <asp:CheckBox ID="S101" runat="server" Text="turmeric powder" />
                                <asp:CheckBox ID="S102" runat="server" Text="red chilli" />
                                <asp:CheckBox ID="S103" runat="server" Text="red chilli powder" />
                                <asp:CheckBox ID="S104" runat="server" Text="soya souce" />
                                <asp:CheckBox ID="S105" runat="server" Text="chilli sauce" />
                                <asp:CheckBox ID="S106" runat="server" Text="pepper powder" />
                                <asp:CheckBox ID="S107" runat="server" Text="ginger" />
                                <asp:CheckBox ID="S108" runat="server" Text="garlic" />
                                <asp:CheckBox ID="S109" runat="server" Text="garam masala" />
                                <asp:CheckBox ID="S110" runat="server" Text="coriander powder" />
                                <asp:CheckBox ID="S111" runat="server" Text="cumin seeds" />
                                <asp:CheckBox ID="V101" runat="server" Text="palak" />
                                <asp:CheckBox ID="V102" runat="server" Text="onion" />
                                <asp:CheckBox ID="V103" runat="server" Text="tomato" />
                                <asp:CheckBox ID="V104" runat="server" Text="green chilli" />
                                <asp:CheckBox ID="V105" runat="server" Text="potato" />
                                <asp:CheckBox ID="V106" runat="server" Text="cauli flower" />
                                <asp:CheckBox ID="V107" runat="server" Text="coriander leaves" />
                                <asp:CheckBox ID="V108" runat="server" Text="capsicum" />
                                <asp:CheckBox ID="V109" runat="server" Text="spring onion" />
                                <asp:CheckBox ID="V110" runat="server" Text="curry leaves" />
                                <asp:CheckBox ID="V111" runat="server" Text="mixed vegetables" />
                            </div>
                        </div>
                    </div>
                    <div>
                        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Button_Click" />
                    </div>
                    <div>
                        <asp:Panel ID="Panel" runat="server" Height="200px" CssClass="col-sm-6" Width="100%">
                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">DOSA</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Milk.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">IDLI</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">OATS UPMA</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">POORI</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel5" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">VEG BIRIYANI</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel6" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">RAJMA PULAV</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel7" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">FRIED RICE</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel8" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">TOMATO RICE</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel9" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">PALAK PANEER</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel10" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">ALOO GOBI</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel11" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">SOYBEAN MANCHURIAN</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel12" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">PANEER BHURJI</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel13" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">TEA</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel14" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">COFFEE</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel15" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">MANGO JUICE</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="Panel16" runat="server" Visible="false">
                                <div class="card" style="width: 18rem;">
                                    <img src="Images/Ghee.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">AVOCADO JUICE</h5>
                                    </div>
                                </div>
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                </section>
            </div>
        </main>
    </form>
        <footer class="footer has-cards">
            <div class="container">
                <div class="row row-grid align-items-center my-md">
                    <div class="col-lg-6">
                        <h3 class="text-primary font-weight-light mb-2">Thank You For Using <a href="Home.aspx">Easy Cuisine - A Recipe Generator</a></h3>
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
</body>
</html>
