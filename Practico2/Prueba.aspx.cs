using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practico2
{
    public partial class Prueba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buscar_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {
            PersonasDS.InsertCommandType = SqlDataSourceCommandType.Text;
            PersonasDS.InsertCommand = "Insert into Personas (Nombres,Apellidos,Documento) VALUES (@Nombre,@Apellido, @Documento)";

            PersonasDS.InsertParameters.Add("Nombre", TextBoxNombre.Text);
            PersonasDS.InsertParameters.Add("Apellido", TextBoxApellido.Text);
            PersonasDS.InsertParameters.Add("Documento", TextBoxDocumento.Text);
            PersonasDS.Insert();

            TextBoxNombre.Text = "";
            TextBoxApellido.Text = "";
            TextBoxDocumento.Text = "" ;
        }

        protected void Nombre_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}