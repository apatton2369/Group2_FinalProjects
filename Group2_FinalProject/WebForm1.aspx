<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Group2_FinalProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>LeetCode Problems List</title>
    <style>
        .problem-details{
            display: none;
        }
        .paragraph-gap{
            margin-bottom: 18px;
        }
        .dot{
            font-size: 18px;
            color: #000;
            display: inline-block;
            width: 5px;
            height: 5px;
            border-radius: 50%;
            margin-right: 6px;
            background-color: #000;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>LeetCode Problems List</h1> 
            <div>
                <input type="radio" id="rdoProblem1" name="problem" value="1" />
                <label for="rdoProblem1">Number Complement</label>
            </div>
            <div>
                <input type="radio" id="rdoProblem2" name="problem" value="2" />
                <label for="rdoProblem2">My Calendar 1</label>
            </div>
            <div>
                <input type ="radio" id="rdoProblem3" name="problem" value="3" />
                <label for="rdoProblem3">Tallest Billboard</label>
            </div>
            <br />
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm Problem" OnClick="btnConfirm_Click" />
            <div class="problem-details" id="problemDetailsContainer" runat="server">
                <h2 id="lblProblemTitle" runat="server"></h2>
                <p id="lblProblemDescription" runat="server"></p>
                <p id="lblProblemConstraints" runat="server"></p>   
                <p id="lblSolution" runat="server"></p>
            </div>
        </div>
    </form>
</body>
</html>
