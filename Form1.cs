using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Aplikacja_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textButtonLable.TextLength > 0)
            {
                button.Text = textButtonLable.Text;
            }

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            button.Enabled = checkButtonEnable.Checked;
                }

        private void label1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        
    }
}
