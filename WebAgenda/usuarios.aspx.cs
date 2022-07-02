using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAgenda
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceUsuario_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceUsuario_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Inserindo um registro duplicado ou com campos em branco')", true);
                //Response.Write("<script> alert('Inserindo um registro duplicado ou com campos em branco') </script>");
                //lMsg.Text = "Inserindo um registro duplicado ou com campos em branco";
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuario_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "k", "swal('Alterando um registro sem informar todos os campos')", true);
            //Response.Write("<script> alert('Alterando um registro sem informar todos os campos') </script>");
            //lMsg.Text = "Alterando um registro sem informar todos os campos";
            e.ExceptionHandled = true;
        }
    }
}