using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineToyShop.Views.Seller
{
    public partial class Selling : System.Web.UI.Page
    {
        Models.Functions Con;
        int Seller = Login.User;
        string SName = Login.Uname;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowToys();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                    {
                    new DataColumn("ID"),
                    new DataColumn("Toy"),
                    new DataColumn("Price"),
                    new DataColumn("Quantity"),
                    new DataColumn("Total")
                }
            );
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            BillList.DataSource = ViewState["Bill"];
            BillList.DataBind();
        }
        private void ShowToys()
        {
            string Query = "Select TId as Code, TName as Name, TQty as Stock, TPrice as Price from ToysTb1";
            ToysList.DataSource = Con.GetData(Query);
            ToysList.DataBind();
        }
        int Key = 0;
        protected void SpecList_SelectedIndexChanged(object sender, EventArgs e)
        {
            TNameTb.Value = ToysList.SelectedRow.Cells[2].Text;
            TPriceTb.Value = ToysList.SelectedRow.Cells[3].Text;
            TQtyTb.Value = ToysList.SelectedRow.Cells[4].Text;
            DateTb.Value = ToysList.SelectedRow.Cells[5].Text;
            if (TNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ToysList.SelectedRow.Cells[1].Text);
            }
        }
        private void UpdateStock()
        {
            int NewQty;
            NewQty = Convert.ToInt32(ToysList.SelectedRow.Cells[3].Text) - Convert.ToInt32(TQtyTb.Value);

            string Query = "Update ToysTb1 set TQty = '{0}' where TId = {1}";
            Query = string.Format(Query, NewQty, ToysList.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowToys();
        }
        private void InsertBill()
        {
            string Query = "insert into BillTb1 values ('{0}', '{1}', '{2}')";
            Query = string.Format(Query, DateTb.Value.ToString(), Seller, Convert.ToInt32(GrdTotalTb.Text));
            Con.SetData(Query);

        }

        int Grdtotal = 0;
        int Amount;
        protected void AddToBillBtn_Click(object sender, EventArgs e)
        {
            if(TQtyTb.Value == "" || TPriceTb.Value == "" || TNameTb.Value == "")
            {

            }else
            {
                int total = Convert.ToInt32(TQtyTb.Value) * Convert.ToInt32(TPriceTb.Value);
                DataTable dt = (DataTable)ViewState["Bill"];
                dt.Rows.Add(BillList.Rows.Count + 1,
                    TNameTb.Value.Trim(),
                    TPriceTb.Value.Trim(),
                    TQtyTb.Value.Trim(),
                    total);

                ViewState["Bill"] = dt;
                this.BindGrid();
                UpdateStock();

                for (int i = 0; i < BillList.Rows.Count; i++)
                {
                    Grdtotal = Grdtotal + Convert.ToInt32(BillList.Rows[i].Cells[5].Text);
                }
                Amount = Grdtotal;
                GrdTotalTb.Text = "Rp" + Grdtotal;
                TNameTb.Value = "";
                TPriceTb.Value = "";
                TQtyTb.Value = "";
                Grdtotal = 0;
            }
        }

        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            InsertBill();
        }
    }
}