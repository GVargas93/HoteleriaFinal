using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactenos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void botonguardar_Click(object sender, EventArgs e)
    {
        //NombreCliente.Text = "";
        //Direccion.Text = "";
        //Correo.Text = "";
        //telefono.Text = "";
        //conta = "";


        Response.Redirect("~/MensajeResivido.aspx");
    }
}