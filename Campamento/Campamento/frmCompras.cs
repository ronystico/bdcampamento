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
    public partial class frmCompras : Form
    {
        public frmCompras()
        {
            InitializeComponent();
        }

        private void Label17_Click(object sender, EventArgs e)
        {

        }

        private void BtnBuscarProveedor_Click(object sender, EventArgs e)
        {
            frmBuscarProveedor frm = new frmBuscarProveedor();
            frm.ShowDialog();
        }

        private void BtnBuscarArticulo_Click(object sender, EventArgs e)
        {
            frmBuscarProducto frm = new frmBuscarProducto();
            frm.ShowDialog();
        }
    }
}
