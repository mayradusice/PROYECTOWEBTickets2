<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PROYECTOWEBTickets2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
 
    <header class="masthead">
       
        <nav class="navbar-custom">
            <a href="Inicio.aspx" class="navbar-brand">Sistema de soporte de Tickets</a>
            <div class="navbar-links">
                <a href="#acerca">Acerca de</a>
                <a href="#servicios">Servicios</a>
                <a href="#dudas">Dudas</a>
            </div>
        </nav>

        
        <div class="masthead-content">
            <h1>Soporte de Tickets</h1>
            <h2>Organiza y monitoriza todos los tickets para soporte técnico en un único lugar para priorizar los mensajes entrantes y aumentar al máximo la eficiencia.</h2>
            
            <asp:Button ID="btnComenzar" runat="server" Text="Comenzar" CssClass="btn-get-started" OnClick="btnComenzar_Click" />
        </div>
    </header>
    <!-- APARTADO ACERCA DE -->
<section class="about-section" id="acerca">
    <div class="about-container">
        <h2>Acerca de Nosotros</h2>
        <p class="about-subtitle">
            Somos un sistema creado para que ninguna duda, queja o problema técnico se pierda. 
            Convertimos cada mensaje en un ticket organizado, con prioridad y responsable.
        </p>

        <div class="about-cards">
            <div class="about-card">
                <h3>Nuestra Misión</h3>
                <p>Facilitar la comunicación entre usuarios y el equipo de soporte, resolviendo cada ticket de forma rápida y ordenada.</p>
            </div>
            <div class="about-card">
                <h3>Nuestra Visión</h3>
                <p>Ser la herramienta principal de soporte técnico donde todo se resuelve en un solo lugar, sin correos perdidos ni mensajes olvidados.</p>
            </div>
            <div class="about-card">
                <h3>¿Por qué nosotros?</h3>
                <p>Porque priorizamos lo urgente, automatizamos lo repetitivo y dejamos historial de todo lo que se atiende.</p>
            </div>
        </div>

        <div class="about-stats">
            <div><strong>120+</strong><span>Tickets Resueltos</span></div>
            <div><strong>24h</strong><span>Tiempo de Respuesta</span></div>
            <div><strong>98%</strong><span>Usuarios Satisfechos</span></div>
        </div>
    </div>
</section>
    
    <section class="features-section" id="servicios">
        <div class="features-container">
            
            <div class="feature-row">
                <div class="feature-text">
                    <h2>Automatiza las tareas rutinarias</h2>
                    <p>Tu equipo de atención al cliente ya no perderá el tiempo haciendo tareas de las que puede encargarse tu software.</p>
                    <p>Ahorra tiempo a la hora de introducir datos, asignar tickets y etiquetar agentes utilizando la automatización de nuestro sistema.</p>
                </div>
                <div class="feature-image">
                    <img src="img/Captura%20de%20pantalla%202026-11-19%20170631.png"  alt="Automatización de tareas" />
                </div>
            </div>

            
            <div class="feature-row reverse">
                <div class="feature-text">
                    <h2>Prioriza y asigna tickets de forma adecuada</h2>
                    <p>Podrás seguir con claridad los casos más urgentes asignando etapas a tus tickets y enviándolos automáticamente a los departamentos correspondientes.</p>
                </div>
                <div class="feature-image">
                    <img src="img/Captura%20de%20pantalla%202026-11-19%20170631.png"  alt="Automatización de tareas" />
                </div>
            </div>
           
        </div>
    </section>

    <!-------------------------------------------------------------------------------------------->
    <section class="faq-section" id="dudas">
        <div class="faq-container">
            
            <div class="faq-title">
                <h2>¿Tienes alguna duda?</h2>
            </div>
         

       

            <div class="faq-list">
                <details class="faq-item">
                    <summary>¿Pra que sirve un sistema de soporte de Tickets?</summary>
                    <div class="faq-answer">
                      Sirve para registrar, organizar, asignar y dar seguimiento a preguntas, dudas o incidencias de clientes o empleados en un solo lugar, evitando que las consultas se pierdan. Convierte cada mensaje (de correo, chat, formulario o mensajería) en un registro con número, estado, prioridad y responsable hasta que se resuelve.
                    </div>
                </details>

                <details class="faq-item">
                    <summary>¿Qué se puede gestionar?</summary>
                    <div class="faq-answer">
                        Permite gestionar incidencias técnicas, peticiones de servicio, asignación de agentes, prioridades, estados de resolución y el historial completo de atención.
                    </div>
                </details>

                <details class="faq-item">
                    <summary>¿Se pueden automatizar los tickets?</summary>
                    <div class="faq-answer">
                        Sí, se pueden configurar reglas para asignar tickets automáticamente según la categoría, enviar notificaciones por correo y escalar casos urgentes.
                    </div>
                </details>

                <details class="faq-item">
                    <summary>¿Solo sirve para soporte Tecnico o TI?</summary>
                    <div class="faq-answer">
                        No. También se usa para atención a clientes, dudas de ventas, facturación, recursos humanos o consultas internas de cualquier área.
                    </div>
                </details>

                <details class="faq-item">
                    <summary>¿Qué canales puede integrar el sistema?</summary>
                    <div class="faq-answer">
                        Generalmente integra portal web, correo electrónico, formularios de contacto y notificaciones internas en una sola bandeja unificada.
                    </div>
                </details>

                <details class="faq-item">
                    <summary>¿Cómo elegir un sistema de Tickets para una empresa?</summary>
                    <div class="faq-answer">
                        Se debe evaluar la facilidad de uso, la capacidad de personalización, reportes en tiempo real y que se adapte al flujo de trabajo de tu equipo.
                    </div>
                </details>
            </div>
        
    </section>

</asp:Content>
