using System;
using System.Collections.Generic;
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