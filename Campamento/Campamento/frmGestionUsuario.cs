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
    public partial class frmGestionUsuario : Form
    {
        public frmGestionUsuario()
        {
            InitializeComponent();
        }

        private void BtnBuscarTrabajador_Click(object sender, EventArgs e)
        {
            frmBuscarTrabajador frm = new frmBuscarTrabajador();
            frm.ShowDialog();
        }
    }
}
