<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP8_DELCASTILLO_DAVID._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">TP8</h1>
        </section>

        <table class="nav-justified">
            <tr>
                <td style="height: 20px; width: 189px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="181px" Width="242px"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:Button ID="Button1" runat="server" Text="Leer Archivo" Style="margin-left: 62px" Width="107px" OnClick="Button1_Click"/>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Escribir Archivo" Style="margin-left: 55px" Width="119px" OnClick="Button2_Click" />
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="189px" Width="222px" CssClass="offset-sm-0"></asp:TextBox>
                </td>
            </tr>
        </table>
    </main>

</asp:Content>
