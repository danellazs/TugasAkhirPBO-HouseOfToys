<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineToyShop.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=BillList.ClientID%>');
            PGrid.bordr = 0;
            var PWin = window.open('', 'PrintGrid', 'left=100, top=100, width=1024, height=768, tollbar = 0, scrollbars = 1, status = 0, resizable = 1');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.close();
            PWin.focus();
            PWin.print();
            PWin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>

        <div class="row">
            <div class="col-md-5">
                <h3 class="text-success" style="color:teal; text-align:center;">Toy Details</h3>

                <div class="row">
                <div class="col">
                    <div class="mt-3">
                        <label for="" class="form-label text-success">Toy Name</label>
                        <input type="text" placeholder="Toy Name" autocomplete="off" runat ="server" class = "form-control" id="TNameTb"/>
                    </div>
                 </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Toy Price</label>
                            <input type="text" placeholder="Price" autocomplete="off" runat ="server" class = "form-control" id="TPriceTb" />
                        </div>
                     </div>
                    </div>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">Toy Quantity</label>
                            <input type="text" placeholder="Quantity" autocomplete="off" runat ="server" class = "form-control" id="TQtyTb" />
                        </div>
                     </div>
                        <div class="col">
                            <div class="mt-3">
                                <label for="" class="form-label text-success">Billing Date</label>
                                <input type="date" runat ="server" class = "form-control" id="DateTb" />
                            </div>
                         </div>
                  </div>
                  <div class ="row mt-3 mb-3"> 
                      <div class="col d-grid">
                            <asp:Button Text="Add To Bill" runat="server" ID="AddToBillBtn" class="btn-warning btn-block btn" OnClick="AddToBillBtn_Click" Width="465px"/>
                      </div>

                  </div>
            </div>
            <div class="row mt-5">
                <h4 class="text-success" style="color:teal; text-align:center;">Toy List</h4>
                <div class="col">
                     <asp:GridView ID="ToysList" runat="server" class="table" CellPadding="4" ForeColor="#333333" AutoGenerateSelectButton="True" GridLines="None" Width="1092px">
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
            <div class="col-md-7">
                               <h4  class="text" style="color:crimson; text-align:center; width: 1083px;">Client's Bill</h4>
               <div class="col">
                    <asp:GridView ID="BillList" runat="server" class="table" CellPadding="4" ForeColor="#333333" AutoGenerateSelectButton="True" GridLines="None" Width="1099px">
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

                       <div class="col d-grid">
                           <asp:Label runat="server" ID="GrdTotalTb" class="text-danger text-center"></asp:Label><br />
                           <asp:Button Text="Print" runat="server" ID="PrintBtn" OnClientClick="PrintBill()" class="btn-warning btn-block btn" Width="1106px"/></div>
                   </div>
            </div>

        </div>
</asp:Content>
