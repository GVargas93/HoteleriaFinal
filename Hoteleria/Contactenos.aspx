<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:panel id="Error" runat="server" visible="false" cssclass="alert alert-danger" role="alert">
            </asp:panel>
            <div class="form-group">
                <asp:label runat="server" text="Nombre"></asp:label>
                <asp:textbox id="NombreCliente" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="NombreCliente"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>
            </div>
            <div class="form-group">
                <asp:label runat="server" text="Direccion"></asp:label>
                <asp:textbox id="Direccion" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Direccion"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>

            </div>

            <div class="form-group">
                <asp:label runat="server" text="Correo"></asp:label>
                <asp:textbox id="Correo" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="Correo"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>

            </div>
            <div class="form-group">
                <asp:label runat="server" text="telefono"></asp:label>
                <asp:textbox id="telefono" runat="server"
                    cssclass="form-control">
    </asp:textbox>
                <asp:requiredfieldvalidator runat="server"
                    controltovalidate="telefono"
                    display="Dynamic"
                    forecolor="Blue"
                    validationgroup="Contactenos"
                    errormessage="Debe ingresar el nombre del cliente">

                 </asp:requiredfieldvalidator>


            </div>
            <div class="form-group">
                <asp:label runat="server" text="Comentarios"></asp:label>
             

            </div>
                  <div class="form-group ttt">
                         <textarea id="TextArea1" cols="80" name="S1" rows="10"></textarea>
            </div>
            <asp:linkbutton id="botonguardar" runat="server"
                cssclass="btn btn-primary"
                validationgroup="Contactenos"
                onclick="botonguardar_Click">
                
                Enviar
         ;
            </asp:linkbutton>
          
        </div>
    </section>
</asp:Content>

