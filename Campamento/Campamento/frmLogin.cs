using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CampamentoROGE
{
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text.Equals("admin") && txtContrasena.Text.Equals("1234")) {
                mdiInicio s = new mdiInicio();
                s.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("La contraseña es incorrecta", "Campamento ROGE",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            txtUsuario.Focus();
            txtUsuario.Select();
        }
    }
}
