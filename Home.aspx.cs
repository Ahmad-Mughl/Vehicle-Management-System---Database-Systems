using System;
using System.Drawing;
using System.Web.UI;
using myweb.DAL; // This is required to use myDAL class

namespace myweb
{
    public partial class Home : Page
    {
        // Instance of your Data Access Layer
        private readonly myDAL _dal = new myDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = string.Empty;
            }
        }

        /// <summary>
        /// Handles Login Button Click
        /// Validates input → Calls myDAL.AuthenticateUser() → Stores Session → Redirects
        /// </summary>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Get trimmed input values
            string userID = TxtUserID.Text.Trim();
            string username = TxtUsername.Text.Trim();
            string password = TxtPassword.Text;

            // Client-side validation
            if (string.IsNullOrWhiteSpace(userID) ||
                string.IsNullOrWhiteSpace(username) ||
                string.IsNullOrWhiteSpace(password))
            {
                ShowError("Please fill in all fields.");
                return;
            }

            // Authenticate using DAL
            bool isAuthenticated = _dal.AuthenticateUser(userID, username, password);

            if (isAuthenticated)
            {
                // Store user info in Session
                Session["UserID"] = userID;
                Session["Username"] = username;

                // Optional: Store login time (PKT)
                Session["LoginTime"] = DateTime.Now.ToString("f"); // e.g., "November 11, 2025 11:15 AM"

                ShowSuccess("Login successful! Welcome, " + username);

             
                Response.Redirect("~/Dashboard.aspx", false);
            }
            else
            {
                ShowError("Invalid User ID, Username, or Password.");
            }

            TxtPassword.Text = string.Empty;
        }

       
        private void ShowError(string message)
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = message;
        }

     
        private void ShowSuccess(string message)
        {
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = message;
        }
    }
}