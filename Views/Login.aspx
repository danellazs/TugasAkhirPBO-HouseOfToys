<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineToyShop.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
        .center{
            margin-left: auto;
            margin-right: auto;
            width: 50%;
            height: 80%;
        }
    </style>
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container-fluid">
    <div class="row mt-5 mb-4">

    </div>
        <font face="Helvetica">
    <div class="row">
        <div class="col-md-4">

        </div>
            <div class="col-md-4"> 
        <form id="form2" runat="server">
            <div>
                <h1 class="text-success" style="color:teal; text-align:center; font-family: Palatino Linotype;">House Of Toys</h1>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-8">
                        <img src ="../Assets/Images/Login.png" height="150" width="1000" class="center"/>
                        </div>
                    </div>
                </div>
                <div class="mt-1">
                    <label for="" class="form-label">User Name</label>
                    <input type="email" placeholder="Your Email Here" autocomplete="off" runat ="server" class = "form-control" id="UnameTb" />
                </div>
                <div class="mt-3">
                    <label for="" class="form-label">Password</label>
                    <input type="password" placeholder="Password" autocomplete="off" runat ="server"  class="form-control" id="PasswordTb" />
                 </div>
                 <div class="mt-3 d-grid">
                    <asp:Label runat="server" ID="ErrMsg" class="text-danger"></asp:Label><br />
                    <asp:Button Text="Login" runat="server" class="btn-success btn" ID="LoginBtn" OnClick="LoginBtn_Click" />
 </div>
            </form>
            </div>
            <div class="col-md-4">

             </div>
        </div>
            </font>
    </div>
</body>
</html>
