using System;
using MySql.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Login
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnentrar_Click(object sender, EventArgs e)
        {
             string email = txtemail.Text;
             string senha = txtsenha.Text;
            Conecta con = new Conecta();
            MySqlConnection conn = new MySqlConnection("server = localhost; user id = root; database = login");
            MySqlDataAdapter sda = new MySqlDataAdapter("select * from usuarios where user_email = '"+txtemail.Text+"' and user_senha = '"+txtsenha.Text+"'", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                Session["user_email"] = dr["user_email"].ToString();
                HttpContext.Current.Response.Write("conectado");
                Server.Transfer("cadastrar.aspx");
            }            
            
                lblerro.Text = "Email ou senha incorretos, tente novamente";
            
        }
    }
}