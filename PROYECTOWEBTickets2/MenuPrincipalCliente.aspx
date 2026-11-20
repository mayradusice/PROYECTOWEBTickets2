<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MenuPrincipalCliente.aspx.cs" Inherits="PROYECTOWEBTickets2.MenuPrincipalCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="dashboard">
 <aside class="sidebar">
 <div class="logo">
     <h2>▣ SISTICKET</h2>
     <span>SISTEMA DE GESTIÓN INTEGRAL</span>
 </div>
     <nav class="menu">
     <a href="CrearTicket.aspx">
     ⊕ Crear Ticket
      </a>
     <a href="Clientes.aspx">
         Clientes
      </a>
      <a href="Tickets.aspx">
         Tickets
      </a>
     </nav>
       <div class="user-sidebar">
      <div class="user-icon">A</div>
      <div>
          <strong>Cliente</strong>
           <a href="Inicio.aspx" class="btn-volver">Inicio</a>
          <small>Usuario del sistema</small>
      </div>
  </div>

  </aside>
    <main class="main-content">
<header class="topbar">

         <span class="system-name">Sistema de Soporte</span>

         <div class="profile">
           <span class="profile-icon">●</span>
           Cliente
         </div>
</header>
 <section class="content">

     <div class="page-heading">

         <div>
             <h1>◉MENU</h1>
             <p>Resumen general del sistema de tickets
         </div>

         <a href="CrearTicket.aspx" class="btn-new">
             + Nuevo Ticket
         </a>

     </div>


     <div class="stats">

         <div class="stat-card blue">
             <span>Abiertos</span>
             <h2>0</h2>
             <div class="stat-icon">✉</div>
         </div>

         <div class="stat-card orange">
             <span>Pendientes</span>
             <h2>0</h2>
             <div class="stat-icon">◷</div>
         </div>

         <div class="stat-card green">
             <span>Resueltos</span>
             <h2>0</h2>
             <div class="stat-icon">✓</div>
         </div>

         <div class="stat-card dark">
             <span>Total Activos</span>
             <h2>0</h2>
             <div class="stat-icon">▥</div>
         </div>

     </div>


     <details class="filters">

         <summary>▼ Filtros y Reportes</summary>

         <div class="filter-content">

             <div>
                 <label>Estado</label>
                 <select>
                     <option>Todos</option>
                     <option>Abierto</option>
                     <option>Pendiente</option>
                     <option>Resuelto</option>
                 </select>
             </div>

             <div>
                 <label>Prioridad</label>
                 <select>
                     <option>Todas</option>
                     <option>Alta</option>
                     <option>Media</option>
                     <option>Baja</option>
                 </select>
             </div>

             <div>
                 <label>Buscar ticket</label>
                 <input type="text" placeholder="Buscar..." />
             </div>

         </div>

     </details>


     
     <div class="table-section">

         <h3>Resultados <small>(0 tickets)</small></h3>

         <div class="table-container">

             <table>

                 <thead>
                     <tr>
                         <th>SLA</th>
                         <th>ID</th>
                         <th>ASUNTO</th>
                         <th>CLIENTE</th>
                         <th>AGENTE</th>
                         <th>ESTADO</th>
                         <th>PRIORIDAD</th>
                         <th>FECHA</th>
                         <th>FACTURACIÓN</th>
                     </tr>
                 </thead>

                 <tbody>
                     <tr>
                         <td colspan="9" class="empty">
                             <div class="empty-icon">▱</div>
                             No se encontraron tickets.
                         </td>
                     </tr>
                 </tbody>

             </table>

         </div>

     </div>

 </section>

    </main>
</div>
</asp:Content>
