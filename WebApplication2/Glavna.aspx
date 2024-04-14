<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glavna.aspx.cs" Inherits="WebApplication2.Glavna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Log in:"></asp:Label>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Log in:" OnClick="Button1_Click" />
    <br /><br />
     <asp:Label ID="Label4" runat="server" Text="Add your rating:" Visible="false"></asp:Label>
 <br /><br />
 <asp:Label ID="Label5" runat="server" Text="Game ID" Visible="false"></asp:Label>
 <asp:TextBox ID="TextBox3" runat="server" Visible="false"></asp:TextBox>
 <br /><br />
 <asp:Label ID="Label6" runat="server" Text="Rating out of 10" Visible="false"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Visible="false">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>

    </asp:DropDownList>
 <br /><br />
 <asp:Button ID="Button2" runat="server" Text="rate" Visible="false" OnClick="Button2_Click"/>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table"></asp:GridView>
</asp:Content>
