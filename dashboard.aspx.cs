using System;
using System.Web.UI;

namespace myweb
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security: If not logged in, redirect to login
            if (Session["UserID"] == null || Session["Username"] == null)
            {
                Response.Redirect("~/Home.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // Show data from session
                lblUserID.Text = Session["UserID"].ToString();
                lblUsername.Text = Session["Username"].ToString();

                // HARDCODED: Show your full name
                lblFullName.Text = "Ahmad";
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear all session data
            Session.Clear();
            Session.Abandon();

            // Redirect to login
            Response.Redirect("~/Home.aspx");
        }
    }
}