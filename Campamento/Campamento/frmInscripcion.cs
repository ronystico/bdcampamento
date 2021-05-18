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
    public partial class frmInscripcion : Form
    {
        public frmInscripcion()
        {
            InitializeComponent();
        }

        public char cReporteOConsulta = 'N';

        private void ReporteOConsulta()
        {
            if (cReporteOConsulta == 'C')
            {
                btnImprimir.Enabled = false;
                btnEliminar.Enabled = false;
                chkEliminar.Enabled = false;
                tabControl1.TabPages.Remove(tabPage2);
            }
            else if (cReporteOConsulta == 'R')
            {
                chkEliminar.Enabled = false;
                btnEliminar.Enabled = false;
                tabControl1.TabPages.Remove(tabPage2);
            }
        }

        private void GroupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Label18_Click(object sender, EventArgs e)
        {

        }

        private void FrmInscripcion_Load(object sender, EventArgs e)
        {
            ReporteOConsulta();
        }

        private void BtnBuscarCliente_Click(object sender, EventArgs e)
        {
            frmBuscarCliente frm = new frmBuscarCliente();
            frm.ShowDialog();
        }

        private void BtnBuscarCampamento_Click(object sender, EventArgs e)
        {
            frmBuscarCampamento frm = new frmBuscarCampamento();
            frm.ShowDialog();
        }
    }
}
