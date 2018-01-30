<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LotteryPage.aspx.cs" Inherits="LotteryChalange.LotteryPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lottery</title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <br />
        <br />
        <asp:Button ID="btnGenerate" runat="server" Text="Generate numbers"  Height="50px" Width="120px" OnClick="btnGenerate_Click" /><br />
        <br />
        <asp:Button ID="btnBonusBall" runat="server" Text="Bonus Ball" Height="50px" Width="120px" OnClick="btnBonusBall_Click" />

        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="lblNum1" runat="server" Text="First Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum2" runat="server" Text="Second Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum3" runat="server" Text="Third Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum4" runat="server" Text="Forth Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum5" runat="server" Text="Fifith Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum6" runat="server" Text="Sixs Number" BackColor="LightGray" Height="50px" Width="50px"></asp:Label>
            <asp:Label ID="lblNum7" runat="server" Text="Bounus Number" BackColor="LightGray" Height="50px" Width="50px" Visible ="false"></asp:Label>
        </asp:Panel>
            </div>
    </form>
</body>
</html>
