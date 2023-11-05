using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            string numero1 = pNumero.Text;
            string numero2 = sNumero.Text;

            if (decimal.TryParse(numero1, out decimal n1) && decimal.TryParse(numero2, out decimal n2))
            {
                string operacao = ddlOperacao.SelectedValue;
                decimal resultado = 0;

                switch (operacao)
                {
                    case "adicao":
                        resultado = n1 + n2;
                        break;
                    case "subtracao":
                        resultado = n1 - n2;
                        break;
                    case "multiplicacao":
                        resultado = n1 * n2;
                        break;
                    case "divisao":
                        
                        if (n2 != 0)
                        {
                            resultado = n1 / n2;
                        }
                        else
                        {
                            lblResultado.Text = "Erro ao realizar divisão por zero";
                            return;
                        }
                        break;    
                }

                lblResultado.Text = resultado.ToString();
            }
            else
            {
                lblResultado.Text = "Favor insirir um números válidos.";
            }

        }
    }
}