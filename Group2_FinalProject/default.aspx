<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Group2_FinalProject._default" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            display:inline-block;
            width:5px;
            height:5px;
            border-radius: 50%;
            background-color: #000;
            margin-right: 6px;
            vertical-align: middle;
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
