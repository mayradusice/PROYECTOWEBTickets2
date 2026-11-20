using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROYECTOWEBTickets2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnNuevaCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevaCuenta.aspx");
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void btnAtras_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }


        protected void ddlRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(ddlRoles.SelectedValue))
            {
              Response.Redirect(ddlRoles.SelectedValue);
            }
            /*codigo para los roles con base de datos 
             * private void CargarRolesDesdeBD()
         {
            string conexion = "Tu_Cadena_De_Conexion";
              using (SqlConnection con = new SqlConnection(conexion))
         {
               SqlCommand cmd = new SqlCommand("SELECT IdRol, NombreRol FROM Roles", con);
               con.Open();
        
                 ddlRoles.DataSource = cmd.ExecuteReader();
                 ddlRoles.DataTextField = "NombreRol"; // Columna que se muestra al usuario
                 ddlRoles.DataValueField = "IdRol";    // Columna con el ID oculto
                 ddlRoles.DataBind();
        
                  opcional para agregar otro elemento
                 ddlRoles.Items.Insert(0, new ListItem("Selecciona un rol...", "0"));
           }
         }
            */
        }
    }
}