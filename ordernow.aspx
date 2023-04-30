<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ordernow.aspx.cs" Inherits="restrarent_project.WebForm2" %>

<!DOCTYPE html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<html>
<head runat="server">
    <title>Restra Webapplication</title>


    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
        crossorigin="anonymous" />


    <script src="js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <style>
        .card {
            margin: 20px;
            transition: transform 0.5s;
        }

            .card:hover {
                transform: scale(1.1);
            }

        .nav-item {
            transition: transform 0.5s;
        }

            .nav-item:hover {
                transform: scale(1.1);
            }

        .navbar {
            position: fixed;
        }

        #form1 {
            margin-left: 50px;
        }

        #class1 {
            text-align: center;
            margin: 0px;
            padding: 0px;
        }

        .GridView1 {
            margin: 30px;
            padding: 30px;
        }

        #form1 {
            margin: 0px;
            padding: 0px;
        }

        #section1 {
            margin: 0px;
            padding: 0px;
        }
    </style>
    <script>

</script>
</head>
<body>
    <div class="bg-image"
        style="background-image: url('/images/pizza.jpg'); background-repeat: repeat;">

        <nav class="navbar navbar-expand-lg fixed-top bg-transparent">
            <div class="container-fluid">

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                &nbsp &nbsp&nbsp&nbsp&nbsp
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active rounded bg-success-subtle" aria-current="page"
                                href="/Home.aspx">Home</a>
                        </li>
                        &nbsp&nbsp&nbsp&nbsp
                        <li class="nav-item">
                            <a class="nav-link active rounded bg-success-subtle" aria-current="page" href="#">Place
                                Order</a>
                        </li>
                        &nbsp&nbsp&nbsp&nbsp
                        <li class="nav-item">
                            <a class="nav-link active rounded bg-success-subtle" aria-current="page" href="#">Order
                                Details</a>
                        </li>
                        &nbsp&nbsp&nbsp&nbsp

                        <li class="nav-item">
                            <a class="nav-link active rounded bg-success-subtle" aria-current="page"
                                href="#">AboutUS</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="container">
            <form runat="server" class="need-validation col-6  rounded" id="form1">

                <div class="shadow p-3  rounded bg-outline text-light bg-outline rounded-3" id="class1">
                    Order Details
                </div>
                <div class="md-6 ">

                    <label for="TextBox11" runat="server" class="form-label text-light">Order ID</label>
                    <asp:TextBox ID="TextBox11" runat="server" type="text"
                        class="form-control bg-transparent text-white" placeholder="This is order ID" Width="400px">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="please fill the given field!!!" ControlToValidate="TextBox11" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>
                <div class="md-6 ">

                    <label for="TextBox1" runat="server" class="form-label text-light">Enter FullName</label>
                    <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control bg-transparent text-white"
                        placeholder="Enter fullname" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="please fill the given field!!!" ControlToValidate="TextBox1" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>

                <label for="radio1" class="form-label text-white">Select Gender</label>
                <div class="row">
                    <div class="text-light">
                        <asp:RadioButtonList ID="radio1" runat="server" RepeatLayout="Flow"
                            RepeatDirection="Horizontal">
                            <asp:ListItem Text="male" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="female" Value="2"></asp:ListItem>
                            <asp:ListItem Text="other" Value="3"></asp:ListItem>

                        </asp:RadioButtonList>

                    </div>
                    <asp:RequiredFieldValidator ID="reqfval1" runat="server"
                        ErrorMessage="Please fill the given feild!!" ControlToValidate="radio1" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>
                <div class="col-6">
                    <label for="TextArea1" runat="server" class="form-label text-light">Address</label>
                    <textarea id="TextArea1" runat="server" class="form-control col-6 bg-transparent text-white"
                        placeholder="Enter the address" width="400px"></textarea>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="please fill this field!!" ControlToValidate="TextArea1" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="TextBox6" runat="server" class="form-label text-light">Zip code</label>
                    <asp:TextBox ID="TextBox6" runat="server" type="text"
                        class="form-control col-6 bg-transparent text-white" placeholder="Enter the Zipcode"
                        TextMode="Number" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="please fill this field!!" ControlToValidate="TextBox6" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>

                <div class="col-md-6 dropdown show ">

                    <label for="ddlcountry" runat="server" class="form-label text-light bg-transparent">
                        Select
                        Dish</label>
                    <asp:DropDownList ID="ddlcountry" class="bg-primary text-white rounded" AutoPostBack="true"
                        AppendDataBoundItems="true" runat="server"
                        OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                        <asp:ListItem Value="menu" Selected="True" Text="----select dish----"></asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="col-md-6 dropdown show ">
                    <label for="ddlstate" runat="server" class="form-label text-light bg-transparent">Dish Types</label>
                    <asp:DropDownList ID="ddlstate" class="bg-primary text-white rounded" AutoPostBack="true"
                        AppendDataBoundItems="true" runat="server"
                        OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                        <asp:ListItem Value="item" Selected="True" Text="----select dishitem----">
                        </asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6 dropdown show ">
                    <label for="ddlstate" runat="server" class="form-label text-light bg-transparent">Quantity</label>
                    <asp:TextBox ID="TextBox12" runat="server" class="form-control col-6 bg-transparent text-white"
                        placeholder="Enter the quantity " Width="400px" TextMode="number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="please fill this field!!" ControlToValidate="TextBox12" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="TextBox7" runat="server" class="form-label text-light">Mobile no</label>
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control col-6 bg-transparent text-white"
                        placeholder="Enter the phone number" Width="400px" TextMode="SingleLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="please fill this field!!" ControlToValidate="TextBox7" Display="Dynamic"
                        ForeColor="OrangeRed"></asp:RequiredFieldValidator>
                </div>
                <!-- Credit card form -->
                <section class="section1">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card mb-4">
                                <div class="card-header py-3">
                                    <h5 class="mb-0">Biling details</h5>
                                </div>
                                <div class="card-body">
                                    <form class="form2">
                                        <!-- 2 column grid layout with text inputs for the first and last names -->
                                        <div class="row mb-4">
                                            <div class="col">
                                                <div class="form-outline">
                                                    <input type="text" id="form6Example1" class="form-control" />
                                                    <label class="form-label" for="form6Example1">First name</label>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-outline">
                                                    <input type="text" id="form6Example2" class="form-control" />
                                                    <label class="form-label" for="form6Example2">Last name</label>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="checkbox" value="" id="checkoutForm2" checked />
                                            <label class="form-check-label" for="checkoutForm2">
                                                Save this information for next time
                                            </label>
                                        </div>

                                        <hr class="my-4" />

                                        <h5 class="mb-4">Payment</h5>

                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="checkoutForm3"
                                                checked />
                                            <label class="form-check-label" for="checkoutForm3">
                                                Credit card
                                            </label>
                                        </div>

                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="checkoutForm4" />
                                            <label class="form-check-label" for="checkoutForm4">
                                                Debit card
                                            </label>
                                        </div>

                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="checkoutForm5" />
                                            <label class="form-check-label" for="checkoutForm5">
                                                Paypal
                                            </label>
                                        </div>

                                        <div class="row mb-4">
                                            <div class="col">
                                                <div class="form-outline">
                                                    <input type="text" id="formNameOnCard" class="form-control" />
                                                    <label class="form-label" for="formNameOnCard">Name on card</label>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-outline">
                                                    <input type="text" id="formCardNumber" class="form-control" />
                                                    <label class="form-label" for="formCardNumber">Credit card number</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mb-4">
                                            <div class="col-3">
                                                <div class="form-outline">
                                                    <input type="text" id="formExpiration" class="form-control" />
                                                    <label class="form-label" for="formExpiration">Expiration</label>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="form-outline">
                                                    <input type="text" id="formCVV" class="form-control" />
                                                    <label class="form-label" for="formCVV">CVV</label>
                                                </div>
                                            </div>
                                        </div>
                                        <asp:Button ID="Button2" class="btn btn-primary btn-lg btn-block col-12" runat="server" Text="make payment" CausesValidation="false" />

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <br />
                <br />
                <div class="text-center">
                    &nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="submit" CssClass="btn btn-primary" Width="400px" />
                    <asp:Label ID="Label12" CssClass="text-warning" runat="server" Text=" "></asp:Label>
                </div>
                <div class="text-dark font-weight-bold container">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </div>
            </form>
        </div>
    </div>

</body>
</html>






