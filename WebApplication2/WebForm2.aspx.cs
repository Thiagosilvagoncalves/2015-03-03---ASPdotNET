using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.IO;

namespace SistemaAlunoIntegrado
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TypePers_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TypePers.SelectedIndex == 0)
            {
                accountMultiView.ActiveViewIndex = 1;
            }
            else
            {
                accountMultiView.ActiveViewIndex = 2;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Nome.Text.Trim();
            string end = Endereço.Text.Trim();
            string ema = Email.Text.Trim();
            int se1 = Int32.Parse(Senha.Text);
            int se2 = Int32.Parse(Senha2.Text);
            string cp = CPF.Text.Trim();
            {
                StreamWriter sw = new StreamWriter(@"C:\2015-03-03 - Exercício - Pessoa Física.csv", true);
                sw.WriteLine(string.Format("{0};{1};{2};{3};{4};{5};{6}",
                name, end, ema, se1.ToString(), se2.ToString(), cp,
                System.DateTime.Now.ToShortDateString(),
                System.DateTime.Now.ToShortTimeString()));
                sw.Close();
            }
            accountMultiView.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cnj = CNPJ.Text.Trim();
            string raz = Social.Text.Trim();
            {
                StreamWriter sw = new StreamWriter(@"C:\2015-03-03 - Exercício - Pessoa Jurídica.csv", true);
                sw.WriteLine(string.Format("{0};{1}",
                cnj, raz,
                System.DateTime.Now.ToShortDateString(),
                System.DateTime.Now.ToShortTimeString()));
                sw.Close();
            }
            accountMultiView.ActiveViewIndex = 2;
        }
    }
}