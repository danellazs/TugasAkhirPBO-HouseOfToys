using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineToyShop.Views.Admin
{
    public partial class Spesification : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSpesification();
        }
        private void ShowSpesification()
        {
            string Query = " Select * from SpecTb1";
            SpecList.DataSource = Con.GetData(Query);
            SpecList.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(SpecAgeTb.Value == "" || SpecBrandTb.Value == "" || SizeCb.SelectedIndex == -1) 
                {
                    ErrMsg.Text = "Missing Data!!!";
                }else
                {
                    string SpecAge = SpecAgeTb.Value;
                    string SpecBrand = SpecBrandTb.Value;
                    string SpecSize = SizeCb.SelectedItem.ToString();

                    string Query = "insert into SpecTb1 values('{0}','{1}', '{2}')";
                    Query = string.Format(Query, SpecAge, SpecBrand, SpecSize);
                    Con.SetData(Query);
                    ShowSpesification();
                    ErrMsg.Text = "Spesification Inserted!!!";
                    SpecAgeTb.Value = "";
                    SpecBrandTb.Value = "";
                    SizeCb.SelectedIndex = -1;
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        int Key = 0;
        protected void SpecList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SpecAgeTb.Value = SpecList.SelectedRow.Cells[2].Text;
            SpecBrandTb.Value = SpecList.SelectedRow.Cells[3].Text;
            SizeCb.SelectedItem.Value = SpecList.SelectedRow.Cells[4].Text;
            if (SpecAgeTb.Value == "")
            {
                Key = 0;
            } else
            {
                Key = Convert.ToInt32(SpecList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SpecAgeTb.Value == "" || SpecBrandTb.Value == "" || SizeCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Missing Data!!!";
                }
                else
                {
                    string SpecAge = SpecAgeTb.Value;
                    string SpecBrand = SpecBrandTb.Value;
                    string SpecSize = SizeCb.SelectedItem.ToString();

                    string Query = "update SpecTb1 set SpecAge='{0}', SpecBrand='{1}', SpecSize='{2}' where SpecId={3}";
                    Query = string.Format(Query, SpecAge, SpecBrand, SpecSize, SpecList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSpesification();
                    ErrMsg.Text = "Spesification Updated!!!";
                    SpecAgeTb.Value = "";
                    SpecBrandTb.Value = "";
                    SizeCb.SelectedIndex = -1;


                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        protected void DeleteBtn_Click (object sender, EventArgs e)
        {
            try
            {
                if (SpecAgeTb.Value == "" || SpecBrandTb.Value == "" || SizeCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Select a Spesification!!!";
                }
                else
                {
                    string SpecAge = SpecAgeTb.Value;
                    string SpecBrand = SpecBrandTb.Value;
                    string SpecSize = SizeCb.SelectedItem.ToString();

                    string Query = "delete from SpecTb1 where SpecId={0}";
                    Query = string.Format(Query, SpecList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSpesification();
                    ErrMsg.Text = "Spesification Deleted!!!";
                    SpecAgeTb.Value = "";
                    SpecBrandTb.Value = "";
                    SizeCb.SelectedIndex = -1;


                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
    }
}