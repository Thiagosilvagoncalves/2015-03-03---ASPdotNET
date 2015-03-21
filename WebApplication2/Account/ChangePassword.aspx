<%@ Page Title="Alterar Senha - Sistema Aluno Integrado" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication2.Account.ChangePassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Alterar Senha
    </h2>
    <p>
        Preencha os Campos abaixo para Alterar a Senha.
    </p>
    <p>
        Senhas curtas são fáceis de adivinhar. Tente uma senha com pelo menos <%= Membership.MinRequiredPasswordLength %> caracteres.
    </p>
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/" EnableViewState="false" RenderOuterTable="false" 
         SuccessPageUrl="ChangePasswordSuccess.aspx">
        <ChangePasswordTemplate>
            <span class="NotificaçãoFalha">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="NotificaçãoFalha" 
                 ValidationGroup="ChangeUserPasswordValidationGroup" DisplayMode="List"/>
            <div class="InfoConta">
                <fieldset class="changePassword">
                    <legend>Alterar Senha</legend>
                    <p>
                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Senha Antiga:</asp:Label>
                        <asp:TextBox ID="CurrentPassword" runat="server" CssClass="Senha" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" 
                             CssClass="NotificaçãoFalha" ErrorMessage="Senha Antiga é Obrigatória." ToolTip="Senha Antiga é Obrigatória." 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Nova Senha:</asp:Label>
                        <asp:TextBox ID="NewPassword" runat="server" CssClass="Senha" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" 
                             CssClass="NotificaçãoFalha" ErrorMessage="Nova Senha é Obrigatória." ToolTip="Nova Senha é Obrigatória." 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirmar Nova Senha:</asp:Label>
                        <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="Senha" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" 
                             CssClass="NotificaçãoFalha" Display="Dynamic" ErrorMessage="Confirmação de Nova Senha Obrigatória."
                             ToolTip="Confirmação de Nova Senha Obrigatória." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                             CssClass="NotificaçãoFalha" Display="Dynamic" ErrorMessage="Senhas não coincidem. Tente novamente."
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                    </p>
                </fieldset>
                <p class="BotãoAvançar">
                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"/>
                    <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Alterar Senha" 
                         ValidationGroup="ChangeUserPasswordValidationGroup"/>
                </p>
            </div>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
</asp:Content>
