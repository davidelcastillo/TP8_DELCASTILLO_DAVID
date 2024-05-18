using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;

namespace TP8_DELCASTILLO_DAVID
{
    public partial class _Default : Page
    {
        string path = "D:/temp.hhh";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (File.Exists(path))
            {
                TextBox2.Text = "";
                string contenido = "";
                using (StreamReader oSR = File.OpenText(path))
                {
                    string s = "";
                    while ((s = oSR.ReadLine()) != null)
                    {
                        contenido += s;
                    }
                }
                TextBox2.Text = contenido;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (File.Exists(path))
            {
                File.Delete(path);
            }

            using (FileStream oFS = File.Create(path))
            {
                Byte[] miInfo = new UTF8Encoding(true).GetBytes(TextBox1.Text);
                oFS.Write(miInfo, 0, miInfo.Length);
            }
        }
    }
}