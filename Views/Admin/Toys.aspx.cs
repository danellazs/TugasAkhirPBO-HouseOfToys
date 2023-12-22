using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineToyShop.Views.Admin
{
    public partial class Toys : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowToys();
                GetCategories();
                GetSpesification();
            }
            ShowToys();
        }
        private void ShowToys()
        {
            string Query = "Select * from ToysTb1";
            ToysList.DataSource = Con.GetData(Query);
            ToysList.DataBind();
        }
        private void GetCategories ()
        {
            string Query = "select * from CategoryTb1";
            TCatCb.DataTextField = Con.GetData(Query).Columns["CatName"].ToString();
            TCatCb.DataValueField = Con.GetData(Query).Columns["CatId"].ToString();
            TCatCb.DataSource = Con.GetData(Query);
            TCatCb.DataBind();
        }
        private void GetSpesification()
        {
            string Query = "select * from SpecTb1";
            TSpecCb.DataTextField = Con.GetData(Query).Columns["SpecAge"].ToString();
            TSpecCb.DataValueField = Con.GetData(Query).Columns["SpecId"].ToString();
            TSpecCb.DataSource = Con.GetData(Query);
            TSpecCb.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TSpecCb.SelectedIndex == -1 || TCatCb.SelectedIndex == -1 || PriceTb.Value == "" ||  QtyTb.Value == "" )
                {
                    ErrMsg.Text = "Missing Data!!!";
                }
                else
                {
                    string TName = TNameTb.Value;
                    string TSpec = TSpecCb.SelectedValue.ToString();
                    string TCategory = TCatCb.SelectedValue;
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "insert into ToysTb1 values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, TName, TSpec, TCategory, Quantity, Price);
                    Con.SetData(Query);
                    ShowToys();
                    ErrMsg.Text = "Toys Inserted!!!";
                    TNameTb.Value = "";
                    TSpecCb.SelectedIndex = -1;
                    TCatCb.SelectedIndex = -1;
                    PriceTb.Value = "";
                    QtyTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        int Key = 0;

        protected void ToysList_SelectedIndexChanged(object sender, EventArgs e)
        {
            TNameTb.Value = ToysList.SelectedRow.Cells[2].Text;
            TSpecCb.SelectedValue = ToysList.SelectedRow.Cells[3].Text;
            TCatCb.SelectedValue = ToysList.SelectedRow.Cells[4].Text;
            QtyTb.Value = ToysList.SelectedRow.Cells[5].Text;
            PriceTb.Value = ToysList.SelectedRow.Cells[6].Text;
            if (TNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ToysList.SelectedRow.Cells[1].Text);
            }
        }
        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TSpecCb.SelectedIndex == -1 || TCatCb.SelectedIndex == -1 || PriceTb.Value == "" || QtyTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!!";
                }
                else
                {
                    string TName = TNameTb.Value;
                    string TSpec = TSpecCb.SelectedValue.ToString();
                    string TCategory = TCatCb.SelectedValue;
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "update ToysTb1 set TName = '{0}' ,TSpec = '{1}', TCategory = '{2}', TQty = '{3}', TPrice = '{4}' where TId = {5}";
                    Query = string.Format(Query, TName, TSpec, TCategory, Quantity, Price, ToysList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowToys();
                    ErrMsg.Text = "Toys Updated!!!";
                    TNameTb.Value = "";
                    TSpecCb.SelectedIndex = -1;
                    TCatCb.SelectedIndex = -1;
                    PriceTb.Value = "";
                    QtyTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (TNameTb.Value == "" || TSpecCb.SelectedIndex == -1 || TCatCb.SelectedIndex == -1 || PriceTb.Value == "" ||  QtyTb.Value == "" )
                {
                    ErrMsg.Text = "Missing Data!!!";
                }
                else
                {
                    string TName = TNameTb.Value;
                    string TSpec = TSpecCb.SelectedValue.ToString();
                    string TCategory = TCatCb.SelectedValue;
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "delete ToysTb1 where TId ={0}";
                    Query = string.Format(Query, ToysList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowToys();
                    ErrMsg.Text = "Toys Deleted!!!";
                    TNameTb.Value = "";
                    TSpecCb.SelectedIndex = -1;
                    TCatCb.SelectedIndex = -1;
                    PriceTb.Value = "";
                    QtyTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
    }
}