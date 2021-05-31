<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetPass.aspx.cs" Inherits="forgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Start your development with a Design System for Bootstrap 4." />
    <meta name="author" content="Creative Tim" />
    <title>Forget Password  || Easy Cuisine - A Recipe Generator</title>
    <!-- Favicon -->
    <link href="./assets/img/brand/favicon.png" rel="icon" type="image/png" />
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Icons -->
    <link href="./assets/vendor/nucleo/css/nucleo.css" rel="stylesheet" />
    <link href="./assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Argon CSS -->
    <link type="text/css" href="./assets/css/argon.css?v=1.0.1" rel="stylesheet" />
    <!-- Docs CSS -->
    <link type="text/css" href="./assets/css/docs.min.css" rel="stylesheet" />
</head>
<body>
    <section class="section section-shaped section-lg">
            <div class="shape shape-style-1 bg-gradient-default">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        <div class="container pt-lg-md">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card bg-secondary shadow border-0">
                            <div class="card-header bg-white pb-5">
                                <div class="btn-wrapper text-center">
                                    <h1 class="display-3 mb-0">FIND ACCOUNT</h1>
                                </div>
                            </div>
                        <div class="card-body px-lg-5 py-lg-5">
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                        </div>
                                        <asp:TextBox ID="email" AutoCompleteType="Disabled" runat="server" TextMode="Email" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email Required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary mt-4" OnClick="SendEmail" />
                                    <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-primary mt-4" OnClick="submit_Click" />
                                    <asp:Label ID="lblMessage" runat="server" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/popper/popper.min.js"></script>
    <script src="../assets/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="../assets/vendor/headroom/headroom.min.js"></script>
    <!-- Argon JS -->
    <script src="../assets/js/argon.js?v=1.0.1"></script>
</body>
</html>
