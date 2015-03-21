<%@ Page Title="Registro - Sistema Aluno Integrado" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <h2>
                        Criar uma Nova Conta
                    </h2>
                    <p>
                        Preencha os Campos abaixo para Criar uma Nova Conta
                    </p>
                    <p>
                        Senhas curtas são fáceis de adivinhar. Tente uma senha com pelo menos <%= Membership.MinRequiredPasswordLength %> caracteres.
                    </p>
                    <span class="NotificaçãoFalha">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="NotificaçãoFalha" 
                         ValidationGroup="RegisterUserValidationGroup" DisplayMode="List"/>


                    <div class="InfoConta">
                        <fieldset class="register">
                            <legend>Cadastro</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Usuário:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="Texto"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="NotificaçãoFalha" ErrorMessage="Usuário é Obrigatório." ToolTip="Usuário é Obrigatório." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="Texto"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="NotificaçãoFalha" ErrorMessage="E-mail é Obrigatório." ToolTip="E-mail é Obrigatório." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Senha:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="Senha" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                     CssClass="NotificaçãoFalha" ErrorMessage="Senha é Obrigatório." ToolTip="Senha é Obrigatório." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirmar Senha:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="Senha" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="NotificaçãoFalha" Display="Dynamic" 
                                     ErrorMessage="Confirmação de Senha Obrigatória." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirmação de Senha Obrigatória." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="NotificaçãoFalha" Display="Dynamic" ErrorMessage="Senhas não coincidem. Tente novamente."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>
                        </fieldset>
                        <p class="BotãoAvançar">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Criar Usuário" 
                                 ValidationGroup="RegisterUserValidationGroup"/>
                        </p>
                        </div>
                    </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
