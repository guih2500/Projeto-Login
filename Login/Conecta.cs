using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Login
{
    public class Conecta
    {
        //Define a String para a conexão
        static String strConexao = @"server = localhost; user id = root; database = login";
        //Cria a conexão com o banco de dados
        MySqlConnection con = new MySqlConnection(strConexao);

        //Executa comandos para Inserir, atualizar e excluir
        public String ExecutaComandos(String comandoSql)
        {
            try
            {
                //abertura de conexão
                con.Open();
                //Define o comando do SQL
                MySqlCommand cmd = new MySqlCommand(comandoSql, con);
                //Executa o comando do SQL
                cmd.ExecuteNonQuery();
                return "OK";
            }
            catch (Exception erro)
            {
                return erro.Message;
            }
            finally
            {
                //Fecha o Banco
                con.Close();
            }
        }
    }
}