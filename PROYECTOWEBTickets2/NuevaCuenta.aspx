<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NuevaCuenta.aspx.cs" Inherits="PROYECTOWEBTickets2.NuevaCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ls-wrapper">
        <div class="ls-card">

            <!-- codigo para la parte de la iquierda -->
            <div class="ls-left">
                <div class="ls-header-left">
                    <div class="ls-logo">▣ Sistem<span>Tickets</span></div>
                    <div class="ls-hotline">SOPORTE TÉCNICO: <strong>+52 664 123 4567</strong></div>
                </div>

                <div class="ls-hero">
                    <h1>Gestiona Tu Soporte<br />En Tus Términos</h1>
                    <p>Creamos la forma más inteligente de administrar tus tickets y dar seguimiento rápido a cada solicitud.</p>
                    <div class="ls-tagline">Crea. Organiza. Resuelve. Todo en un solo lugar.</div>
                </div>

                <div class="ls-footer-left">
                    <a href="Inicio.aspx">Inicio</a> &nbsp;|&nbsp;
                    <a href="Login.aspx">Iniciar Sesión</a> &nbsp;|&nbsp;
                    <a href="#">Contacto</a>
                </div>
            </div>

            <!-- codigo para la parte derecha -->
            <div class="ls-right">
                <div class="ls-form-box">

                    <div class="ls-form-title">
                        <asp:Label ID="lblRegistro" runat="server" Text="Crear Nueva Cuenta"></asp:Label><br />
                        <span>Completa tus datos para comenzar ahora</span>
                    </div>

                    
                    <div class="ls-field">
                        <asp:DropDownList ID="ddlRoles" runat="server" CssClass="ls-input">
                            <asp:ListItem Text="Selecciona un rol..." Value="0" />
                           <asp:ListItem Text="Administrador" Value="~/MenuPrincipal.aspx" />
                           <asp:ListItem Text="Agente" Value="~/MenuPrincipalAgente.aspx" />
                          <asp:ListItem Text="Cliente" Value="~/MenuPrincipalCliente.aspx" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvRoles" runat="server" ControlToValidate="ddlRoles" InitialValue="0"
                            ErrorMessage="* Debes seleccionar un rol" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                    </div>

                   
                    <div class="ls-row-2">
                        <div class="ls-field">
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="ls-sr-only" AssociatedControlID="txtNombre"></asp:Label>

                            <asp:TextBox ID="txtNombre" runat="server" CssClass="ls-input" placeholder="Nombre"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rvfNombre" 
                                runat="server" 
                                ControlToValidate="txtNombre"
                                ErrorMessage="* Nombre obligatorio" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revNombre" 
                                runat="server" 
                                ControlToValidate="txtNombre"
                                ErrorMessage="* Solo letras (mín. 2)" 
                                ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{2,50}$"
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                        <div class="ls-field">
                            <asp:Label ID="lblApellido" runat="server" Text="Apellido" CssClass="ls-sr-only" AssociatedControlID="txtApellido"></asp:Label>

                            <asp:TextBox ID="txtApellido" runat="server" CssClass="ls-input" placeholder="Apellido"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rfvApellido" 
                                runat="server" ControlToValidate="txtApellido"
                                ErrorMessage="* Apellido obligatorio" 
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revApellido" 
                                runat="server" 
                                ControlToValidate="txtApellido"
                                ErrorMessage="* Solo letras (mín. 2)" 
                                ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{2,50}$"
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                    </div>

                    
                    <div class="ls-row-2">
                        <div class="ls-field">
                            <asp:Label ID="lblCiudad" runat="server" Text="Ciudad" CssClass="ls-sr-only" AssociatedControlID="txtCiudad"></asp:Label>

                            <asp:TextBox ID="txtCiudad" runat="server" CssClass="ls-input" placeholder="Ciudad"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="revCiudad" 
                                runat="server" 
                                ControlToValidate="txtCiudad"
                                ValidationExpression="^[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{2,50}$" 
                                ErrorMessage="* Solo letras (mín. 2)"
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                        <div class="ls-field">
                            <asp:Label ID="lblTelefono" runat="server" Text="Teléfono" CssClass="ls-sr-only" AssociatedControlID="txtTelefono"></asp:Label>

                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="ls-input" MaxLength="10" placeholder="Teléfono (10 dígitos)"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rfvTelefono" 
                                runat="server" ControlToValidate="txtTelefono"
                                ErrorMessage="* Teléfono obligatorio" 
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revTelefono" 
                                runat="server" 
                                ControlToValidate="txtTelefono"
                                ValidationExpression="^[0-9]{10}$" 
                                ErrorMessage="* 10 dígitos numéricos"
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                    </div>

                   
                    <div class="ls-field">
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="ls-sr-only" AssociatedControlID="txtCorreo"></asp:Label>

                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="ls-input" placeholder="Correo electrónico"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvCorreo" 
                            runat="server" 
                            ControlToValidate="txtCorreo"
                            ErrorMessage="* Correo obligatorio" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revCorreo" 
                            runat="server" 
                            ControlToValidate="txtCorreo"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="* Formato de correo inválido" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                    </div>

                    
                    <div class="ls-row-2">
                        <div class="ls-field">
                            <asp:Label ID="lblContraseña" runat="server" Text="Contraseña" CssClass="ls-sr-only" AssociatedControlID="txtContraseña"></asp:Label>

                            <asp:TextBox ID="txtContraseña" runat="server" CssClass="ls-input" TextMode="Password" placeholder="Contraseña"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rfvContraseña" 
                                ControlToValidate="txtContraseña" 
                                runat="server"
                                ErrorMessage="* Obligatoria" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revContraseña" 
                                ControlToValidate="txtContraseña" 
                                runat="server"
                                ValidationExpression="^.{8,}$" 
                                ErrorMessage="* Mínimo 8 caracteres"
                                CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                        <div class="ls-field">
                            <asp:Label ID="lblConfirmar" runat="server" Text="Confirmar Contraseña" CssClass="ls-sr-only" AssociatedControlID="txtConfirmar"></asp:Label>

                            <asp:TextBox ID="txtConfirmar" runat="server" CssClass="ls-input" TextMode="Password" placeholder="Confirmar contraseña"></asp:TextBox>

                            <asp:CompareValidator ID="cvConfirmar" 
                                runat="server"
                                ControlToValidate="txtConfirmar" 
                                ControlToCompare="txtContraseña" 
                                Operator="Equal"
                                ErrorMessage="* No coinciden" CssClass="ls-error" ValidationGroup="CrearCuenta" Display="Dynamic" />
                        </div>
                    </div>

                   
                    <div class="ls-actions">
                        <asp:Button ID="btnGuardar" runat="server" Text="GUARDAR" OnClick="btnGuardar_Click"
                            ValidationGroup="CrearCuenta" CssClass="btn-ls-submit" />
                        <asp:Button ID="btnVolver" runat="server" Text="VOLVER" OnClick="btnVolver_Click"
                            CausesValidation="false" CssClass="btn-ls-back" />
                        <span class="ls-terms">Al registrarte aceptas nuestras Políticas de Seguridad y términos de uso.</span>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
