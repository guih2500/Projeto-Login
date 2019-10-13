using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Login
{
    public partial class cadastrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Cad_Click(object sender, EventArgs e)
        {
            string emailc = cademail.Text;
            string senhac = cadsenha.Text;
            string senhacf = confsenha.Text;

            Conecta con = new Conecta();

            if (senhac == senhacf)
            {
                String cmd = @"INSERT INTO usuarios(user_email, user_senha) VALUES('" + emailc + "', '" + cadsenha.Text + "')";
                //Ira executar o comando de Inserir no SQL
                string resultado = con.ExecutaComandos(cmd);
                if (resultado.Equals("OK"))
                {
                    lblmensagem.Text = "Usuario Cadastrado";

                }
                else
                {
                    lblmensagem.Text = resultado;
                }
            }
            else
            {
                lblmensagem.Text = "senhas não conferem, Favor tentar novamente";                
            }
        }

        protected void Lista_Click(object sender, EventArgs e)
        {
            Response.Redirect("Listar.aspx");
        }
    }
}