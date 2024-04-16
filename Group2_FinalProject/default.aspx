<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Group2_FinalProject._default" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LeetCode Problems List</title>
    <style>
        .problem-details {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>LeetCode Problems List</h1>
            <asp:ListBox ID="lstProblems" runat="server" SelectionMode="Single">
                <asp:ListItem Text="Two Sum" Value="1"></asp:ListItem>
                <asp:ListItem Text="Add Two Numbers" Value="2"></asp:ListItem>
                <asp:ListItem Text="Reverse Integer" Value="3"></asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm Problem" OnClick="btnConfirm_Click" />
            <div class="problem-details" id="problemDetailsContainer">
                <h2 id="lblProblemTitle" runat="server"></h2>
                <p id="lblProblemDescription" runat="server"></p>
                <p id="lblTestCase" runat="server"></p>
            </div>
        </div>
    </form>
    <script>
        function ShowProblemDetails(problemId) {
            document.getElementById('problemDetailsContainer').style.display = 'block';
            // You can use AJAX to fetch problem details dynamically or use hidden fields to store them
            // For simplicity, let's assume you have JavaScript variables for problem details
            var problemDetails = GetProblemDetailsById(problemId);
            document.getElementById('lblProblemTitle').innerText = problemDetails.Title;
            document.getElementById('lblProblemDescription').innerText = problemDetails.Description;
            document.getElementById('lblTestCase').innerText = problemDetails.TestCase;
            document.getElementById('btnConfirm').setAttribute('data-problem-id', problemId);
        }

        // Function to simulate getting problem details by ID
        function GetProblemDetailsById(problemId) {
            // This is just a dummy function, in real application, you may fetch data from server using AJAX
            if (problemId === 1) {
                return {
                    Title: 'Two Sum',
                    Description: 'Given an array of integers, return indices of the two numbers such that they add up to a specific target.',
                    TestCase: 'Input: [2, 7, 11, 15], Target: 9, Output: [0, 1]'
                };
            } else if (problemId === 2) {
                return {
                    Title: 'Add Two Numbers',
                    Description: 'You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit.',
                    TestCase: 'Input: (2 -> 4 -> 3) + (5 -> 6 -> 4), Output: 7 -> 0 -> 8'
                };
            } else if (problemId === 3) {
                return {
                    Title: 'Reverse Integer',
                    Description: 'Given a 32-bit signed integer, reverse digits of an integer.',
                    TestCase: 'Input: 123, Output: 321'
                };
            }
            // Add more cases as needed
        }
    </script>
</body>
</html>
