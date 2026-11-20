<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="PROYECTOWEBTickets2.CrearTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard"> 
       
        <aside class="sidebar">
            <div class="logo">
                <strong>▣ Tickets</strong>
            </div>
            <nav class="menu">

                <a href="login.aspx">◉ Inicio</a>
                <a href="Tickets.aspx" class="active">Tickets</a>

                <asp:Button ID="btnVolver" runat="server" Text="← Volver" CssClass="btn-get-started" OnClientClick="history.back(); return false;" />
            </nav>
            <div class="user-sidebar">
                <div class="user-icon">A</div>
                <div>
                    
                    <a href="Inicio.aspx" class="btn-volver">Página Principal</a>
                    <small>Usuario del sistema</small>
                </div>
            </div>
        </aside>

        <main class="main-content ticket-page">
            
            <header class="topbar">
                <h1>Crear Nuevo Ticket</h1>
                <div class="topbar-right">
                    <span class="breadcrumb">Soporte / Tickets / <strong>Crear Nuevo Ticket</strong></span>
                    <div class="profile">
                        <span class="profile-badge">AD</span>
                        <span>Usuario</span>
                    </div>
                </div>
            </header>

            <div class="ticket-grid">
                
               
                <div class="ticket-card">
                    <h2>Crear Nuevo Ticket</h2>

                    <div class="form-group">
                        <label>Título</label>
                        <asp:TextBox ID="txtTitulo" runat="server" CssClass="input-ticket" placeholder="Ej. Error al iniciar sesión"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Descripción</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input-ticket textarea-ticket" TextMode="MultiLine" Rows="5" placeholder="Describe detalladamente el problema..."></asp:TextBox>
                    </div>

                    <div class="form-row-2">
                        <div class="form-group">
                            <label>Categoría</label>
                            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="input-ticket">
                                <asp:ListItem Text="Soporte Técnico" Value="1" />
                                <asp:ListItem Text="Redes e Internet" Value="2" />
                                <asp:ListItem Text="Facturación" Value="3" />
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Prioridad</label>
                            <asp:DropDownList ID="ddlPrioridad" runat="server" CssClass="input-ticket" ClientIDMode="Static">
                                <asp:ListItem Text="Alta" Value="Alta" />
                                <asp:ListItem Text="Media" Value="Media" />
                                <asp:ListItem Text="Baja" Value="Baja" />
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="ticket-actions">
                        <div class="actions-top">
                            <asp:Button ID="btnGuardarTicket" runat="server" Text="Guardar Ticket" CssClass="btn-ticket-primary" />
                            <asp:Button ID="btnBuscarTicket" runat="server" Text="🔍 Buscar Ticket" CssClass="btn-ticket-outline" CausesValidation="false" />
                        </div>
                        <div class="actions-bottom">
                            <asp:Button ID="btnActualizarTicket" runat="server" Text="↻ Actualizar Ticket" CssClass="btn-ticket-dark" />
                        </div>
                    </div>
                </div>

                
                <div class="ticket-right-column">
                    
                    <div class="ticket-meta-box">
                        <div class="form-group">
                            <label>Prioridad Visual</label>
                            <div class="priority-pills">
                                <span class="pill pill-alta active-pill" data-value="Alta">Alta</span>
                                <span class="pill pill-media" data-value="Media">Media</span>
                                <span class="pill pill-baja" data-value="Baja">Baja</span>
                            </div>
                            <asp:HiddenField ID="hfPrioridad" runat="server" Value="Alta" ClientIDMode="Static" />
                        </div>

                        <div class="form-row-2">
                            <div class="form-group">
                                <label>Estado</label>
                                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="input-ticket">
                                    <asp:ListItem Text="Nuevo" Value="Nuevo" />
                                    <asp:ListItem Text="En Proceso" Value="En Proceso" />
                                    <asp:ListItem Text="Resuelto" Value="Resuelto" />
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label>Usuario Creador</label>
                                <asp:TextBox ID="txtUsuarioCreador" runat="server" CssClass="input-ticket" Text="admin.sistema" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-row-2">
                            <div class="form-group">
                                <label>Fecha de Creación</label>
                                <asp:TextBox ID="txtFechaCreacion" runat="server" CssClass="input-ticket" TextMode="Date"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Fecha de Cierre</label>
                                <asp:TextBox ID="txtFechaCierre" runat="server" CssClass="input-ticket" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    
                    <div class="ticket-card history-card">
                        <div class="history-header">
                            <h2>Historial de Tickets</h2>
                            <span class="history-icon">🕒</span>
                        </div>

                        <div class="history-table-wrap">
                            <table class="history-table">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Usuario</th>
                                        <th>Acción</th>
                                        <th>Comentario</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>19/11/2026 09:12</td>
                                        <td>juan.perez</td>
                                        <td>Creación</td>
                                        <td>Ticket creado por el usuario</td>
                                    </tr>
                                    <tr>
                                        <td>19/11/2026 09:15</td>
                                        <td>sistema</td>
                                        <td>Asignación</td>
                                        <td>Ticket asignado a soporte técnico</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="history-footer">
                            Mostrando 1-2 de 2 registros
                        </div>
                    </div>

                </div>

            </div>
        </main>

    </div>

    <!-- Script para hacer interactivas las píldoras de prioridad -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const pills = document.querySelectorAll(".priority-pills .pill");
            const hiddenInput = document.getElementById("hfPrioridad");
            const dropdown = document.getElementById("ddlPrioridad");

            pills.forEach(pill => {
                pill.addEventListener("click", function () {
                    pills.forEach(p => p.classList.remove("active-pill"));
                    this.classList.add("active-pill");

                    const val = this.getAttribute("data-value");
                    if (hiddenInput) hiddenInput.value = val;
                    if (dropdown) dropdown.value = val;
                });
            });

            if (dropdown) {
                dropdown.addEventListener("change", function () {
                    pills.forEach(p => {
                        p.classList.toggle("active-pill", p.getAttribute("data-value") === this.value);
                    });
                    if (hiddenInput) hiddenInput.value = this.value;
                });
            }
        });
    </script>
</asp:Content>
