<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Estadia.aspx.cs" Inherits="Estadia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
     <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert" >
            </asp:Panel>
        <div class="form-group">
    <asp:Label ID="Label1" runat="server" Text="Fecha de Llegada" ForeColor="Red"></asp:Label>
    <asp:TextBox ID="FechaDeLlegada" runat="server"
             CssClass="form-control">
    </asp:TextBox>
              <asp:RequiredFieldValidator runat="server"
                     ControlToValidate="FechaDeLlegada"
                     display="Dynamic"
                         ForeColor="Blue"
                         ValidationGroup="Estadia"
                         ErrorMessage="Ingrese la fecha de Ingreso">

                 </asp:RequiredFieldValidator>
 </div>

  <div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="Fecha de Salida" ForeColor="Red"></asp:Label>
    <asp:TextBox ID="FechaDeSalida" runat="server"
             CssClass="form-control">

    </asp:TextBox>
        <asp:RequiredFieldValidator runat="server"
                     ControlToValidate="FechaDeSalida"
                     display="Dynamic"
                         ForeColor="Blue"
                         ValidationGroup="Estadia"
                         ErrorMessage="Ingrese la fecha de Salida">

                 </asp:RequiredFieldValidator>

 </div>

            
              <div class="col-md-12"> 
              <asp:GridView ID="EstadiaGridView" runat="server"
             CssClass="table" GridLines="None"
             AutoGenerateColumns="false"
             OnRowCommand="EstadiaGridView_RowCommand">
             <Columns>
                 <asp:TemplateField HeaderText="Editar">
                     <ItemTemplate>
                         <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                             CommandArgument='<%# Eval("estadia_id") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                            </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Eliminar">
                     <ItemTemplate>
                         <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                             CommandArgument='<%# Eval("estadia_id") %>'>
                                <i class="glyphicon glyphicon-remove"></i>
                            </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:BoundField DataField="nombre" HeaderText="Nombre del Cliente" />
                 <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                   <asp:BoundField DataField="direccion" HeaderText="Direccion" />
                 <asp:BoundField DataField="telefono" HeaderText="telefono" />
                  <asp:BoundField DataField="tipocliente" HeaderText="Tipo cliente" />
             </Columns>
              
         </asp:GridView>
                 </div>

 <asp:LinkButton ID="botonguardar" runat="server"
                CssClass="btn btn-primary"
                   ValidationGroup="Estadia"
                OnClick="botonguardar_Click">
                
                guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn btn-primary"
                NavigateUrl="Estadia.aspx">
                cancelar
            </asp:HyperLink>
            <asp:HiddenField ID="estadiaidhiddenfield" runat="server"
                Value="0"/>

             </div>
            </section>
</asp:Content>

