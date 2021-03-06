﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <section class="row">
        <div class="col-md-6" itemid="u">
            <asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
            </asp:Panel>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Nombre Del Cliente" ForeColor="Red"></asp:Label>
                <asp:TextBox ID="NombreCliente" runat="server"
                    CssClass="form-control">
    </asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="NombreCliente"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Cliente"
                    ErrorMessage="Debe ingresar el nombre del cliente">

                 </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Apellido" ForeColor="red"></asp:Label>
                <asp:TextBox ID="Apellido" runat="server"
                    CssClass="form-control">

    </asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Apellido"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Cliente"
                    ErrorMessage="Debe ingresa el apellido  del cliente">

                 </asp:RequiredFieldValidator>

            </div>

            <div class="form-group">
                <asp:Label ID="Direccion" runat="server" Text="Direccion" ForeColor="Red"></asp:Label>
                <asp:TextBox ID="Direccio" runat="server"
                    CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Direccio"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Cliente"
                    ErrorMessage="Debe ingresar el telefono del Cliente">

                 </asp:RequiredFieldValidator>

            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Telefono" ForeColor="Red"></asp:Label>
                <asp:TextBox ID="TelefonoTextbox" runat="server"
                    CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="TelefonoTextbox"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Cliente"
                    ErrorMessage="Debe ingresar el telefono del Cliente">

                 </asp:RequiredFieldValidator>

            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Tipo Cliente" ForeColor="Red"></asp:Label>

                <asp:DropDownList class="ttt" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="TipoCliente_iD">
                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT [TipoCliente_iD], [Descripcion] FROM [DML].[Tbl_TipoCliente] "></asp:SqlDataSource>

            </div>
            <div class="col-md-12">
                <asp:GridView ID="ClienteGridView" runat="server"
                    CssClass="table" GridLines="None"
                    AutoGenerateColumns="false"
                    OnRowCommand="ClienteGridView_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Editar"
                                    CommandArgument='<%# Eval("clientes_id") %>'>
                                <i class="glyphicon glyphicon-pencil"></i>
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Eliminar"
                                    CommandArgument='<%# Eval("clientes_id") %>'>
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
                ValidationGroup="Cliente"
                OnClick="botonguardar_Click">
                
                guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn btn-primary"
                NavigateUrl="Cliente.aspx">
                cancelar
            </asp:HyperLink>
            <asp:HiddenField ID="clienteidhiddenfield" runat="server"
                Value="0" />

        </div>
    </section>
</asp:Content>

