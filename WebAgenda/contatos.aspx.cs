using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAgenda
{
    public partial class contatos1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceContatos_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txbEmail.Text != "" && txbNome.Text != "" && txbTelefone.Text != "")
                {
                    //capturar a string de conexão
                    System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
                    System.Configuration.ConnectionStringSettings connString;
                    connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

                    //cria um objeto de conexão
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = connString.ToString();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "Insert into contato (nome,email,telefone) values (@nome,@email,@telefone)";
                    cmd.Parameters.AddWithValue("nome", txbNome.Text);
                    cmd.Parameters.AddWithValue("email", txbEmail.Text);
                    cmd.Parameters.AddWithValue("telefone", txbTelefone.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                }
                else
                {
                    throw new Exception("Campos em branco");
                }

            }
            catch (Exception erro)
            {
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Campos em branco')", true);
                Response.Write("<script> alert('" + erro.Message + "') </script>");
            }
        }
    }
}