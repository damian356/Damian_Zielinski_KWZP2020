namespace Aplikacja_1
{
    partial class Form1
    {
        /// <summary>
        /// Wymagana zmienna projektanta.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Wyczyść wszystkie używane zasoby.
        /// </summary>
        /// <param name="disposing">prawda, jeżeli zarządzane zasoby powinny zostać zlikwidowane; Fałsz w przeciwnym wypadku.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Kod generowany przez Projektanta formularzy systemu Windows

        /// <summary>
        /// Metoda wymagana do obsługi projektanta — nie należy modyfikować
        /// jej zawartości w edytorze kodu.
        /// </summary>
        private void InitializeComponent()
        {
            this.checkButtonEnable = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textButtonLable = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // checkButtonEnable
            // 
            this.checkButtonEnable.AutoSize = true;
            this.checkButtonEnable.Location = new System.Drawing.Point(90, 181);
            this.checkButtonEnable.Name = "checkButtonEnable";
            this.checkButtonEnable.Size = new System.Drawing.Size(168, 21);
            this.checkButtonEnable.TabIndex = 0;
            this.checkButtonEnable.Text = "Włącz/wyłącz przycisk";
            this.checkButtonEnable.UseVisualStyleBackColor = true;
            this.checkButtonEnable.CheckedChanged += new System.EventHandler(this.checkBox1_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.Location = new System.Drawing.Point(33, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(283, 29);
            this.label1.TabIndex = 2;
            this.label1.Text = "Laboratoria KWZP 2020";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // textButtonLable
            // 
            this.textButtonLable.Location = new System.Drawing.Point(49, 110);
            this.textButtonLable.Name = "textButtonLable";
            this.textButtonLable.Size = new System.Drawing.Size(257, 22);
            this.textButtonLable.TabIndex = 3;
            this.textButtonLable.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(64, 232);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(194, 56);
            this.button1.TabIndex = 4;
            this.button1.Text = "Change me";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(368, 345);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textButtonLable);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.checkButtonEnable);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox checkButtonEnable;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textButtonLable;
        private System.Windows.Forms.Button button1;
    }
}

