using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeEpicSpiesAssignment
{
    public partial class NewAssignmentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today;
            Calendar2.SelectedDate = DateTime.Today.AddDays(14);
            // Calendar3.SelectedDate = DateTime.Today.AddDays(21);

            Calendar2.VisibleDate = Calendar2.SelectedDate;
            // Calendar3.VisibleDate = Calendar3.SelectedDate;
        }

        protected void assignButton_Click(object sender, EventArgs e)
        {

            double vacationDays = Calendar2.SelectedDate.Subtract(Calendar1.SelectedDate).TotalDays;
            double jobLengthDays = Calendar3.SelectedDate.Subtract(Calendar2.SelectedDate).TotalDays;

            if (vacationDays < 14)
            {
                resultLabel.Text = "ERROR: New assignments must begin no sooner than two weeks after the end of previous assignment.";
            }
            else if (vacationDays >= 14 && jobLengthDays > 21)
            {
                double cost = (jobLengthDays * 500) + 1000;
                string result = String.Format(codeNameTextBox.Text + " is assigned to " + newAssignTextBox.Text + "."
                    + "<br>" + "Budget total: {0:C}", cost);

                resultLabel.Text = result;
            }
            else
            {
                double cost = (jobLengthDays * 500);
                string result = String.Format(codeNameTextBox.Text + " is assigned to " + newAssignTextBox.Text + "."
                    + "<br>" + "Budget total: {0:C}", cost);

                resultLabel.Text = result;
            }
        }
    }
}