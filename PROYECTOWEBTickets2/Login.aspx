<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROYECTOWEBTickets2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-wrapper">
        <div class="login-card">
            
            <div class="login-header">
                <asp:Label ID="lblTitulo" runat="server" Text="¡Bienvenido!" CssClass="login-title"></asp:Label>
                <p class="login-subtitle">Ingresa tus credenciales para acceder al sistema de tickets</p>
            </div>

            <div class="form-group">
                <label class="form-label">Rol de acceso</label>
                <asp:DropDownList ID="ddlRoles" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged">
                    <asp:ListItem Text="Selecciona un rol..." Value="0" />
                    <asp:ListItem Text="Administrador" Value="~/MenuPrincipal.aspx" />
                    <asp:ListItem Text="Agente" Value="~/MenuPrincipalAgente.aspx" />
                    <asp:ListItem Text="Cliente" Value="~/MenuPrincipalCliente.aspx" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ej. Admin1234" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revUsuario" runat="server" 
                    ControlToValidate="txtUsuario"
                    ValidationExpression="^(?=.*[A-Z])(?=(?:.*\d){4}).*$"
                    ErrorMessage="* Debe tener al menos 1 Mayúscula y 4 números"
                    Display="Dynamic" CssClass="validation-error">
                </asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCorreo" runat="server" Text="Correo electrónico" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server" placeholder="usuario@dominio.com" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" 
                    ControlToValidate="txtCorreo"
                    Display="Dynamic" CssClass="validation-error"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="* Formato de correo inválido">
                </asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContraseña" runat="server" Text="Contraseña" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" placeholder="••••••••" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revContraseña" runat="server" 
                    ErrorMessage="* Mínimo 8 caracteres" 
                    ControlToValidate="txtContraseña"   
                    ValidationExpression="^.{8,}$"
                    Display="Dynamic" CssClass="validation-error">
                </asp:RegularExpressionValidator>
            </div>

            <div class="login-links-row">
                <asp:Button ID="btnRecuperar" runat="server" Text="¿Olvidaste tu contraseña?" CssClass="btn-link-subtle" CausesValidation="false" />
            </div>

            <div class="form-actions">
                <asp:Button ID="btnIngresar" runat="server" Text="INGRESAR" OnClick="btnIngresar_Click" CssClass="btn-primary-login" />
            </div>

            <div class="login-footer-actions">
                <asp:Label ID="lblNuevaCuenta" runat="server" Text="¿No tienes cuenta?" CssClass="text-muted"></asp:Label>
                <asp:Button ID="btnNuevaCuenta" runat="server" Text="Crear Nueva Cuenta" OnClick="btnNuevaCuenta_Click" CssClass="btn-secondary-login" CausesValidation="false" />
            </div>

            <div class="login-back">
                <asp:Button ID="btnAtras" runat="server" Text="← Volver al inicio" OnClick="btnAtras_Click" CssClass="btn-back" CausesValidation="false" />
            </div>

        </div>
    </div>
</asp:Content>