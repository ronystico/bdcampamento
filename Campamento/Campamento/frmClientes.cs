﻿using System;
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
    public partial class frmClientes : Form
    {
        public frmClientes()
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

        private void Label8_Click(object sender, EventArgs e)
        {

        }

        private void FrmRegistrarClientes_Load(object sender, EventArgs e)
        {
            ReporteOConsulta();
        }
    }
}
