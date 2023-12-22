<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineToyShop.Views.Admin.Buyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col"> 
            <h1 class="text-center"style="color:teal;">Manage Buyer</h1>

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-4">
                <label for="" class="form-label text-success">Buyer Name</label>
                <input type="text" placeholder="Name" autocomplete="off" runat="server" id="SNameTb" class="form-control" />
            </div>
            <div class="mb-4">
                <label for="" class="form-label text-success">Buyer Email</label>
                <input type="text" placeholder="Email" autocomplete="off" runat="server" id="EmailTb" class="form-control" />
            </div>
              <div class="mb-4">
                  <label for="" class="form-label text-success">Buyer Phone</label>
                  <input type="text" placeholder="Phone Number" autocomplete="off" runat="server" id="PhoneTb" class="form-control" />
              </div>
              <div class="mb-4">
                  <label for="" class="form-label text-success">Buyer Password</label>
                  <input type="text" placeholder="Password" autocomplete="off" runat="server" id="AddressTb" class="form-control" />
              </div>
    <div class="row">
                   <asp:Label runat="server" ID="ErrMsg" class="text-danger"></asp:Label>
                   <div class="col-md-4 d-grid"><asp:Button Text="Update" ID="EditBtn" runat="server" class="button1" OnClick="EditBtn_Click" /></div>
                   <div class="col-md-4 d-grid"> <asp:Button Text="Save" ID="SaveBtn" runat="server" class="button2" OnClick="SaveBtn_Click" /></div>
                   <div class="col-md-4 d-grid"> <asp:Button Text="Delete" ID="DeleteBtn" runat="server" class="button3" OnClick="DeleteBtn_Click"/> </div>

         </div>
        </div>
        <div class="col-md-8">
            <asp:GridView ID="SellerList" runat="server" class="table" CellPadding="4" ForeColor="#333333" AutoGenerateSelectButton="True" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="powderblue" Font-Bold="false" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
