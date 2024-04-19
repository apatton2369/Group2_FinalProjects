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
            <div>
                <input type="radio" id="rdoProblem1" name="problem" value="1" />
                <label for="rdoProblem1">Number Complement</label>
            </div>
            <div>
                <input type="radio" id="rdoProblem2" name="problem" value="2" />
                <label for="rdoProblem2">My Calendar 1</label>
            </div>
            <div>
                <input type="radio" id="rdoProblem3" name="problem" value="3" />
                <label for="rdoProblem3">Tallest Billboard</label>
            </div>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Confirm Problem" OnClick="btnConfirm_Click" />
            <div class="problem-details" id="Div2" runat="server">
                <h2 id="H2" runat="server"></h2>
                <p id="P4" runat="server"></p>
                <p id="P5" runat="server"></p>
                <p id="P6" runat="server"></p>
            </div>
        </div>
    </form>
</body>
</html>
