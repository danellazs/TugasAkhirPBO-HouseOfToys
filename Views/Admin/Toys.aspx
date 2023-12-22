<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Toys.aspx.cs" Inherits="OnlineToyShop.Views.Admin.Toys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h1 class="text-center" style="color:teal;">Manage Toys</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-4">
                    <label class="form-label text-success">Toys Name</label>
                    <input type="text" placeholder="Name" id="TNameTb" runat="server"  autocomplete="off" class="form-control"/>
                </div>
                <div class="mb-4">
                     <label for="" class="form-label text-success">Spesification</label>
                     <asp:DropDownList  id="TSpecCb"  runat="server" class="form-control"></asp:DropDownList>
                </div>
                <div class="mb-4">
                     <label for="" class="form-label text-success">Categories</label>
                     <asp:DropDownList ID="TCatCb" runat="server" class="form-control"></asp:DropDownList>
                </div>
                <div class="mb-4">
                    <label for="" class="form-label text-success">Price</label>
                    <input type="text" placeholder="Price" ID="PriceTb" runat="server" autocomplete="off" class="form-control"/>
                </div>
                <div class="mb-4">
                    <label for="" class="form-label text-success">Quantity</label>
                    <input type="text" placeholder="Quantity" ID="QtyTb" runat="server" autocomplete="off" class="form-control"/>
                </div>
                <div class="row">
                 <asp:Label runat="server" ID="ErrMsg" class="text-danger"></asp:Label>
                 <div class="col-md-4 d-grid"><asp:Button Text="Update" runat="server" ID="EditBtn" class="button1" OnClick="UpdateBtn_Click"/></div>
                 <div class="col-md-4 d-grid"> <asp:Button Text="Save" runat="server" ID="SaveBtn" class="button2" OnClick="SaveBtn_Click" /></div>
                 <div class="col-md-4 d-grid"> <asp:Button Text="Delete" runat="server" ID="DeleteBtn" class="button3" OnClick="DeleteBtn_Click"/> </div>
                </div>
            </div>
                 <div class="col-md-8">
                     <asp:GridView ID="ToysList" runat="server" class="table" CellPadding="4" ForeColor="#333333" AutoGenerateSelectButton="True" GridLines="None">
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
    </div>
</asp:Content>
