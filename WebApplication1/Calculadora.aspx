<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
    <style type="text/css" >

        .container {
            display: flex;
            justify-content: center;
            height: 100vh;
            align-items: center;
        }

        .panel-style{
            border: 1px solid #ccc;
            background-color: #f7f7f7;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 2px 2px 5px #753695;
            display: flex;
            flex-direction: column;
            justify-content: center;
            
            align-items: center;
            width: 475px;
        }
        .buton-style {
            border-radius: 5px;
            cursor: pointer;
            border: none;
            padding: 10px 20px;
            margin-bottom: 10px;
            background-color: #5f2a91;
            
        }
        .buton-style:hover {
            opacity: 0.8;
        }

        .titulo-style {
            text-align: center;
            color: #660066;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Panel ID="Panel1" runat="server" CssClass="panel-style">
                <h1>
                    <asp:Label ID="Label1" runat="server" CssClass="titulo-style" Text="Label">CALCULADORA</asp:Label>
                </h1>

                    <br />

                <asp:Label ID="Label2" runat="server" Text="Número 1:"></asp:Label>        
                <asp:TextBox ID="pNumero" runat="server" style="text-align: center"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Número 2:"></asp:Label>
                <asp:TextBox ID="sNumero" runat="server" style="text-align: center"></asp:TextBox>
                <br />
                <asp:Label ID="Operacao" runat="server" Text="Operação:"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlOperacao" runat="server" style="text-align: center">
                    <asp:ListItem Text="Adição" Value="adicao" />
                    <asp:ListItem Text="Subtração" Value="subtracao" />
                    <asp:ListItem Text="Multiplicação" Value="multiplicacao" />
                    <asp:ListItem Text="Divisão" Value="divisao" />
                </asp:DropDownList>
                <br />
                <asp:Button ID="btnCalcular" runat="server" CssClass="buton-style" OnClick="btnCalcular_Click" Text="Calcular" />
                <br />
                <asp:Label ID="txt_Resultado" runat="server" Text="Resultado:"></asp:Label>
                &nbsp;
                <asp:Label ID="lblResultado" runat="server"></asp:Label>
                <br />
            </asp:Panel>
        </div>
            
        
        


        
            
        
    </form>
</body>
</html>
