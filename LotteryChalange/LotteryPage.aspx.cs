using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace LotteryChalange
{
    public partial class LotteryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            int[] arr = new int[7];
            arr = createArray();
            for (int i = 0; i < 7; i++)
            {
                int value = arr[i];
                if (i == 0 && value < 10)
                {
                    lblNum1.BackColor = Color.Gray;
                }

            }

            Display(arr);
            LoopLables(this.Panel1);
        }

        // this method is for display the numbers in the lables.
        public void Display(int[] arr)
        {
            lblNum1.Text = arr[0].ToString();
            lblNum2.Text = arr[1].ToString();
            lblNum3.Text = arr[2].ToString();
            lblNum4.Text = arr[3].ToString();
            lblNum5.Text = arr[4].ToString();
            lblNum6.Text = arr[5].ToString();
            lblNum7.Text = arr[6].ToString();

        }

        // Creating a function for returning an array.
        public int[] createArray()
        {
            Random randNum = new Random();
            int n;
            int i = 0;
            int count = 0;
            int[] arr = new int[7];
            do
            {
                n = randNum.Next(1, 49);
                if (!arr.Contains(n))
                {
                    arr[i] = n;
                    i++;
                    count++;
                }

            } while (count < 7);

            System.Array.Sort(arr);

            return arr;
        }



        private void LoopLables(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                Label lbl = c as Label;
                if (lbl != null)
                    lbl.BackColor = Color.Red;
            }
        }

        protected void btnBonusBall_Click(object sender, EventArgs e)
        {
            if (lblNum7.Visible == false)
            {
                lblNum7.Visible = true;
            }
            else
            {
                lblNum7.Visible = false;
            }

        }
       
    }
}