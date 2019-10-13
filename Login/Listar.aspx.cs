using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace Login
{
    public partial class Listar : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BIND();
                BIND();
            }
        }
        public void BIND()
        {
            try
            {
                MySqlConnection conn = new MySqlConnection(connection);
                MySqlCommand cmd = new MySqlCommand();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                cmd.Connection = conn;
                cmd.CommandText = "select * from usuarios";
                conn.Open();
                da.Fill(ds, "usuarios");
                conn.Close();
                GridView1.DataSource = ds.Tables[0].DefaultView;
                DataBind();

            }
            catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }

        protected void voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("cadastrar.aspx");
        }
    }
}