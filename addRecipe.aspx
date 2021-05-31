<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addRecipe.aspx.cs" Inherits="addRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="Start your development with a Design System for Bootstrap 4.">

    <meta name="author" content="Creative Tim">

    <title>Register || Easy Cuisine - A Recipe Generator</title>

    <!-- Favicon -->

    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">

    <!-- Fonts -->

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!-- Icons -->

    <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">

    <link href="../assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Argon CSS -->

    <link type="text/css" href="../assets/css/argon.css?v=1.0.1" rel="stylesheet">

    <!-- Docs CSS -->

    <link type="text/css" href="../assets/css/docs.min.css" rel="stylesheet">
</head>

<body>

    <main>

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



                                <div class="text-center">

                                    <h3>Add Recipe</h3>

                                </div>

                            </div>

                            <div class="card-body px-lg-5 py-lg-5">



                                <form runat="server">

                                    <div class="form-group">

                                        <div class="input-group input-group-alternative mb-3">

                                            <div class="input-group-prepend">
                                            </div>

                                            <asp:TextBox AutoCompleteType="Disabled" ID="TextBox1" placeholder="Recipe Name" TextMode="SingleLine" runat="server"></asp:TextBox>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Textbox1" Display="Dynamic" ErrorMessage="Enter Recipe Name" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>

                                    <div class="form-group">

                                        <div class="input-group input-group-alternative mb-3">

                                            <div class="input-group-prepend">
                                            </div>

                                            <asp:TextBox TextMode="MultiLine" runat="server" placeholder="Ingredients" AutoCompleteType="Disabled" ID="Ingre"></asp:TextBox>

                                        </div>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="Ingre" ErrorMessage="Number Required"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="form-group">

                                        <div class="input-group input-group-alternative mb-3">

                                            <div class="input-group-prepend">
                                            </div>

                                            <asp:DropDownList ID="DropDownList1" runat="server">

                                                <asp:ListItem Selected="True">--Category--</asp:ListItem>

                                                <asp:ListItem>Breakfast</asp:ListItem>

                                                <asp:ListItem>Lunch</asp:ListItem>

                                                <asp:ListItem>Dinner</asp:ListItem>

                                                <asp:ListItem>Snacks</asp:ListItem>

                                                <asp:ListItem>Beverage</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>

                                        <asp:RequiredFieldValidator Display="Dynamic" InitialValue="--Category--" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select the Category" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="form-group">

                                        <div class="input-group input-group-alternative">

                                            <div class="input-group-prepend">
                                            </div>

                                            <asp:TextBox ID="TextBox8" runat="server" AutoCompleteType="Disabled" TextMode="Number" Columns="10" placeholder="Time to Cook in Min" Rows="5" min="0"></asp:TextBox>

                                            <asp:RequiredFieldValidator ID="TTKval" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter minutes" ForeColor="Red"></asp:RequiredFieldValidator>

                                        </div>

                                    </div>

                                    <div class="form-group">

                                        <div class="input-group input-group-alternative">

                                            <div class="input-group-prepend">
                                            </div>

                                            <asp:FileUpload ID="FileUpload1" runat="server" />

                                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Upload the image of product" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>



                                        </div>

                                    </div>
                            </div>

                            <div class="text-muted font-italic">
                            </div>

                            <div class="text-center">

                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Recipe" />

                            </div>

                            <asp:Label ID="Label1" runat="server"></asp:Label>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

            </div>

        </section>

    </main>

</body>
</html>
