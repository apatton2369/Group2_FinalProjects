using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group2_FinalProject
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Assuming you have a list of LeetCode problems
                List<LeetCodeProblem> problems = GetLeetCodeProblems();

                foreach (var problem in problems)
                {
                    lstProblems.Items.Add(new System.Web.UI.WebControls.ListItem(problem.Title, problem.Id.ToString()));
                }
            }
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int selectedProblemId;
            if (int.TryParse(lstProblems.SelectedValue, out selectedProblemId))
            {
                // Redirect to ProblemDetails.aspx with the selected problem ID
                Response.Redirect($"ProblemDetails.aspx?problemId={selectedProblemId}");
            }
        }

        // Method to retrieve LeetCode problems (you need to implement this)
        private List<LeetCodeProblem> GetLeetCodeProblems()
        {
            // You need to implement this method to retrieve the list of LeetCode problems
            // from your data source (e.g., database, JSON file, etc.)
            // For this example, let's assume you have a hardcoded list
            return new List<LeetCodeProblem>
            {
                new LeetCodeProblem { Id = 1, Title = "Two Sum", Description = "Given an array of integers, return indices of the two numbers such that they add up to a specific target." },
                new LeetCodeProblem { Id = 2, Title = "Add Two Numbers", Description = "You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit." },
                new LeetCodeProblem { Id = 3, Title = "Reverse Integer", Description = "Given a 32-bit signed integer, reverse digits of an integer." }
                // Add more problems as needed
            };
        }

        // Define a class for LeetCodeProblem
        public class LeetCodeProblem
        {
            public int Id { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
        }
    }
}
