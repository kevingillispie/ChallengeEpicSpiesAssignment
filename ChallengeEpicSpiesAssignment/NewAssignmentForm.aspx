<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAssignmentForm.aspx.cs" Inherits="ChallengeEpicSpiesAssignment.NewAssignmentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Assignment Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 242px;
            height: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="Epic Spy Logo" class="auto-style1" src="epic-spies-logo.jpg" style="height: 190px; width: auto;" /><br />
        </div>
        <div><h3 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Spy New Assignment Form</h3>
            <p style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">&nbsp;</p></div>
        <div>Spy Code Name: <asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <div>New Assignment Name: <asp:TextBox ID="newAssignTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <div><p>End of Previous Assignment:
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></p>
            <br />
        </div>
        <div><p>Start of New Assignment:
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar></p>
            <br />
        </div>
        <div><p>Prjected End Date of New Assignment:
            <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar></p>
            <p>&nbsp;</p>
        </div>
        <div>
            <asp:Button ID="assignButton" runat="server" Text="Assign Spy" OnClick="assignButton_Click" />
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="resultLabel" runat="server"></asp:Label></div>
    </form>
</body>
</html>
