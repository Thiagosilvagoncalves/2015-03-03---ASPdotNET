<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SistemaAlunoIntegrado.WebForm2" %>

<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
                    <div class="register" align="center">
                    <asp:MultiView ID="accountMultiView" runat="server" ActiveViewIndex="0">
                        <asp:View ID="persInfo" runat="server">
                                        <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
                                        <asp:RadioButtonList ID="TypePers" runat="server" AutoPostBack="True" 
                                            onselectedindexchanged="TypePers_SelectedIndexChanged" 
                                            RepeatDirection="Horizontal">
                                            <asp:ListItem>Pessoa Física</asp:ListItem>
                                            <asp:ListItem>Pessoa Jurídica</asp:ListItem>
                                        </asp:RadioButtonList>
                         </asp:View>
                         
                         <asp:View ID="PF" runat="server">
                            <table>
                                <tr>
                                    <td>
                                    <asp:Label ID="Label1" runat="server">Nome</asp:Label><br />
                                    <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label2" runat="server">Endereço</asp:Label><br />
                                    <asp:TextBox ID="Endereço" runat="server"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label3" runat="server">Email</asp:Label><br />
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label4" runat="server">Senha</asp:Label><br />
                                    <asp:TextBox ID="Senha" runat="server"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label5" runat="server">Confirmação de Senha</asp:Label><br />
                                    <asp:TextBox ID="Senha2" runat="server"></asp:TextBox>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <asp:Label ID="Label6" runat="server">CPF</asp:Label><br />
                                    <asp:TextBox ID="CPF" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                    <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Gerar CSV" 
                                            onclick="Button1_Click" />
                                    </td>
                                </tr>
                            </table>
                         </asp:View>
                         
                         <asp:View ID="PJ" runat="server">
                            <table>
                                <tr>
                                    <td>
                                    <asp:Label ID="Label7" runat="server">CNPJ</asp:Label><br />
                                    <asp:TextBox ID="CNPJ" runat="server"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    <asp:Label ID="Label8" runat="server">Razão Social</asp:Label><br />
                                    <asp:TextBox ID="Social" runat="server"></asp:TextBox><br />
                                    </td>
                                </tr>
                                    <tr>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Gerar CSV" 
                                            onclick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                         </asp:View>

                    </asp:MultiView>
                    </div>
    </form>
</body>
</html>
