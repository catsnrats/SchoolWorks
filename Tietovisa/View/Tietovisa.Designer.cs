using System;
using System.Threading;

namespace Tietovisa
{
    partial class Tietovisa
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;       

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.tiedostoValikko = new System.Windows.Forms.ToolStripMenuItem();
            this.levelMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.easyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.midToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hardToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tietojaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.suljeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.testaaTietokantayhteysToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.buttonAnswer4 = new System.Windows.Forms.Button();
            this.buttonAnswer3 = new System.Windows.Forms.Button();
            this.buttonAnswer2 = new System.Windows.Forms.Button();
            this.buttonAnswer1 = new System.Windows.Forms.Button();
            this.labelQuestion = new System.Windows.Forms.Label();
            this.labelInfo = new System.Windows.Forms.Label();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.labelTimer = new System.Windows.Forms.Label();
            this.buttonNewQuestion = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tiedostoValikko});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(975, 36);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // tiedostoValikko
            // 
            this.tiedostoValikko.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.levelMenu,
            this.tietojaToolStripMenuItem,
            this.suljeToolStripMenuItem,
            this.testaaTietokantayhteysToolStripMenuItem});
            this.tiedostoValikko.Name = "tiedostoValikko";
            this.tiedostoValikko.Size = new System.Drawing.Size(54, 29);
            this.tiedostoValikko.Text = "&File";
            // 
            // levelMenu
            // 
            this.levelMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.easyToolStripMenuItem,
            this.midToolStripMenuItem,
            this.hardToolStripMenuItem});
            this.levelMenu.Font = new System.Drawing.Font("Arial", 10.25F);
            this.levelMenu.Name = "levelMenu";
            this.levelMenu.Size = new System.Drawing.Size(352, 34);
            this.levelMenu.Text = "&Difficulty";
            // 
            // easyToolStripMenuItem
            // 
            this.easyToolStripMenuItem.Name = "easyToolStripMenuItem";
            this.easyToolStripMenuItem.Size = new System.Drawing.Size(226, 34);
            this.easyToolStripMenuItem.Text = "&Easy";
            // 
            // midToolStripMenuItem
            // 
            this.midToolStripMenuItem.Name = "midToolStripMenuItem";
            this.midToolStripMenuItem.Size = new System.Drawing.Size(226, 34);
            this.midToolStripMenuItem.Text = "&Intermediate";
            // 
            // hardToolStripMenuItem
            // 
            this.hardToolStripMenuItem.Name = "hardToolStripMenuItem";
            this.hardToolStripMenuItem.Size = new System.Drawing.Size(226, 34);
            this.hardToolStripMenuItem.Text = "&Hard";
            // 
            // tietojaToolStripMenuItem
            // 
            this.tietojaToolStripMenuItem.Font = new System.Drawing.Font("Arial", 10.25F);
            this.tietojaToolStripMenuItem.Name = "tietojaToolStripMenuItem";
            this.tietojaToolStripMenuItem.Size = new System.Drawing.Size(352, 34);
            this.tietojaToolStripMenuItem.Text = "&Info";
            // 
            // suljeToolStripMenuItem
            // 
            this.suljeToolStripMenuItem.Font = new System.Drawing.Font("Arial", 10.25F);
            this.suljeToolStripMenuItem.Name = "suljeToolStripMenuItem";
            this.suljeToolStripMenuItem.Size = new System.Drawing.Size(352, 34);
            this.suljeToolStripMenuItem.Text = "&Close";
            this.suljeToolStripMenuItem.Click += new System.EventHandler(this.SuljeToolStripMenuItem_Click);
            // 
            // testaaTietokantayhteysToolStripMenuItem
            // 
            this.testaaTietokantayhteysToolStripMenuItem.Font = new System.Drawing.Font("Arial", 10.25F);
            this.testaaTietokantayhteysToolStripMenuItem.Name = "testaaTietokantayhteysToolStripMenuItem";
            this.testaaTietokantayhteysToolStripMenuItem.Size = new System.Drawing.Size(352, 34);
            this.testaaTietokantayhteysToolStripMenuItem.Text = "&Test database connection";
            this.testaaTietokantayhteysToolStripMenuItem.Click += new System.EventHandler(this.TestaaTietokantayhteysToolStripMenuItem_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.buttonAnswer4);
            this.groupBox1.Controls.Add(this.buttonAnswer3);
            this.groupBox1.Controls.Add(this.buttonAnswer2);
            this.groupBox1.Controls.Add(this.buttonAnswer1);
            this.groupBox1.Font = new System.Drawing.Font("Arial", 10.25F);
            this.groupBox1.Location = new System.Drawing.Point(25, 198);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(548, 309);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Choose the right answer";
            // 
            // buttonAnswer4
            // 
            this.buttonAnswer4.Location = new System.Drawing.Point(280, 180);
            this.buttonAnswer4.Name = "buttonAnswer4";
            this.buttonAnswer4.Size = new System.Drawing.Size(202, 79);
            this.buttonAnswer4.TabIndex = 3;
            this.buttonAnswer4.UseVisualStyleBackColor = true;
            // 
            // buttonAnswer3
            // 
            this.buttonAnswer3.Location = new System.Drawing.Point(45, 180);
            this.buttonAnswer3.Name = "buttonAnswer3";
            this.buttonAnswer3.Size = new System.Drawing.Size(202, 79);
            this.buttonAnswer3.TabIndex = 2;
            this.buttonAnswer3.UseVisualStyleBackColor = true;
            // 
            // buttonAnswer2
            // 
            this.buttonAnswer2.Location = new System.Drawing.Point(280, 52);
            this.buttonAnswer2.Name = "buttonAnswer2";
            this.buttonAnswer2.Size = new System.Drawing.Size(202, 79);
            this.buttonAnswer2.TabIndex = 1;
            this.buttonAnswer2.UseVisualStyleBackColor = true;
            // 
            // buttonAnswer1
            // 
            this.buttonAnswer1.Location = new System.Drawing.Point(45, 52);
            this.buttonAnswer1.Name = "buttonAnswer1";
            this.buttonAnswer1.Size = new System.Drawing.Size(202, 79);
            this.buttonAnswer1.TabIndex = 0;
            this.buttonAnswer1.UseVisualStyleBackColor = true;
            // 
            // labelQuestion
            // 
            this.labelQuestion.AutoSize = true;
            this.labelQuestion.Font = new System.Drawing.Font("Arial", 12.25F);
            this.labelQuestion.Location = new System.Drawing.Point(35, 63);
            this.labelQuestion.MaximumSize = new System.Drawing.Size(600, 0);
            this.labelQuestion.Name = "labelQuestion";
            this.labelQuestion.Size = new System.Drawing.Size(113, 28);
            this.labelQuestion.TabIndex = 2;
            this.labelQuestion.Text = "Question";
            // 
            // labelInfo
            // 
            this.labelInfo.AutoSize = true;
            this.labelInfo.Font = new System.Drawing.Font("Arial", 12.25F);
            this.labelInfo.Location = new System.Drawing.Point(633, 63);
            this.labelInfo.MaximumSize = new System.Drawing.Size(300, 0);
            this.labelInfo.Name = "labelInfo";
            this.labelInfo.Size = new System.Drawing.Size(293, 56);
            this.labelInfo.TabIndex = 3;
            this.labelInfo.Text = "Start game by drawing a question";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // labelTimer
            // 
            this.labelTimer.AutoSize = true;
            this.labelTimer.Location = new System.Drawing.Point(247, 552);
            this.labelTimer.Name = "labelTimer";
            this.labelTimer.Size = new System.Drawing.Size(58, 19);
            this.labelTimer.TabIndex = 4;
            this.labelTimer.Text = "TIMER";
            // 
            // buttonNewQuestion
            // 
            this.buttonNewQuestion.Font = new System.Drawing.Font("Arial", 10.25F);
            this.buttonNewQuestion.Location = new System.Drawing.Point(746, 532);
            this.buttonNewQuestion.Name = "buttonNewQuestion";
            this.buttonNewQuestion.Size = new System.Drawing.Size(164, 60);
            this.buttonNewQuestion.TabIndex = 5;
            this.buttonNewQuestion.Text = "&Draw a question";
            this.buttonNewQuestion.UseVisualStyleBackColor = true;
            this.buttonNewQuestion.Click += new System.EventHandler(this.ButtonNewQuestion_Click);
            // 
            // Tietovisa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 19F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(975, 625);
            this.Controls.Add(this.buttonNewQuestion);
            this.Controls.Add(this.labelTimer);
            this.Controls.Add(this.labelInfo);
            this.Controls.Add(this.labelQuestion);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Arial", 8.25F);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Tietovisa";
            this.Text = "Quiz game";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem tiedostoValikko;
        private System.Windows.Forms.ToolStripMenuItem levelMenu;
        private System.Windows.Forms.ToolStripMenuItem tietojaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem suljeToolStripMenuItem;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button buttonAnswer4;
        private System.Windows.Forms.Button buttonAnswer3;
        private System.Windows.Forms.Button buttonAnswer2;
        private System.Windows.Forms.Button buttonAnswer1;
        private System.Windows.Forms.Label labelQuestion;
        private System.Windows.Forms.Label labelInfo;
        private System.Windows.Forms.ToolStripMenuItem easyToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem midToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hardToolStripMenuItem;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Label labelTimer;
        private System.Windows.Forms.ToolStripMenuItem testaaTietokantayhteysToolStripMenuItem;
        private System.Windows.Forms.Button buttonNewQuestion;
    }
}

