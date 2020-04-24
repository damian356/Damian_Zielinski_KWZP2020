using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WindowsFormsApp2;

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
                button1.Text = textButtonLable.Text;
            }

        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
          
            button1.Enabled = checkButtonEnable.Checked;

                }

        private void label1_Click(object sender, EventArgs e)
        {
            DetailsForm detailsform = new DetailsForm(textButtonLable.Text);
            detailsform.Show();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DetailsForm detailsform = new DetailsForm(textButtonLable.Text);
            detailsform.Show();

            Baza_szwalniaEntities db = new Baza_szwalniaEntities();
           
        }
    }
}
