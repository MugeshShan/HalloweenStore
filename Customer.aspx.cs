using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HalloweenStore
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
        protected void grdCustomers_PreRender(object sender, EventArgs e)
        {
            if (grdCustomers.HeaderRow != null)
            {
                grdCustomers.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoices.aspx");
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string id = (grdCustomers.SelectedRow.FindControl("lblId") as Label).Text;
            string firstName = grdCustomers.SelectedRow.Cells[2].Text;
            string lastName = grdCustomers.SelectedRow.Cells[1].Text;
            string state = (grdCustomers.SelectedRow.FindControl("lblState") as Label).Text; ;
            string city = (grdCustomers.SelectedRow.FindControl("lblCity") as Label).Text;
            string phone = (grdCustomers.SelectedRow.FindControl("lblPhone") as Label).Text;

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Id", typeof(int)),
                    new DataColumn("FirstName", typeof(string)),
                    new DataColumn("LastName",typeof(string)),
                    new DataColumn("State",typeof(string)),
                    new DataColumn("City",typeof(string)),
                    new DataColumn("Phone",typeof(string))   });
            dt.Rows.Add(id, firstName, lastName, state, city, phone);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }

        void grdCustomers_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            // If multiple buttons are used in a GridView control, use the
            // CommandName property to determine which button was clicked.
            if (e.CommandName == "pdf_click")
            {
                // Convert the row index stored in the CommandArgument
                // property to an Integer.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button clicked 
                // by the user from the Rows collection.
                GridViewRow row = grdCustomers.Rows[index];
                //gbIngevuld is your GridView's name

                // Now you have access to the gridviewrow.
            }
        }
    }
}