<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormularioHabitacion.aspx.cs" Inherits="FormularioHabitacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <section class="row">
        <div class="col-md-6">

            <asp:Panel ID="ErrorPanel" runat="server" Visible="false"
                CssClass="alert alert-danger" role="alert">
                Error al Guardar la Habitacion
            </asp:Panel>


            <div class="form-group">
                <label>precio</label>
                <asp:TextBox ID="precioTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="precioTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="FormularioHabitacion"
                    ErrorMessage="Debe ingresar el precio">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>numeroCamas</label>
                <asp:TextBox ID="numeroCamasTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="numeroCamasTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="FormularioHabitacion"
                    ErrorMessage="Debe ingresar el numeroCamas">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>estado</label>
                <asp:TextBox ID="estadoTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="estadoTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="FormularioHabitacion"
                    ErrorMessage="Debe ingresar el estado">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>observacion</label>
                <asp:TextBox ID="observacionTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="observacionTextBox"
                    Display="Dynamic"
                    ForeColor="Red"
                    ValidationGroup="FormularioHabitacion"
                    ErrorMessage="Debe ingresar la observacion">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Estadia</label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="Estadia_iD">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT        DML.Tbl_Cliente.nombre, DML.Tbl_Estadia.Estadia_iD
FROM            DML.Tbl_Cliente INNER JOIN
                         DML.Tbl_Estadia ON DML.Tbl_Cliente.Cliente_iD = DML.Tbl_Estadia.Fk_Cliente_iD"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>TipoHabitacion</label>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="TipoHabitacion_iD">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT        TipoHabitacion_iD, Nombre
FROM            DML.Tbl_TipoHabitacion"></asp:SqlDataSource>
                <br />
                <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT [TipoHabitacion_iD], [Nombre] FROM [Tbl_TipoHabitacion]"></asp:SqlDataSource> --%>
            </div>
            <br />
            <div class="form-group">
                <label>Hotel</label>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nombre" DataValueField="Hotel_iD">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT        Hotel_iD, Nombre
FROM            DML.Tbl_Hotel"></asp:SqlDataSource>
                <br />
                <%--<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BD_HotelConnectionString %>" SelectCommand="SELECT [Hotel_iD], [Nombre] FROM [Tbl_Hotel]"></asp:SqlDataSource>--%>
            </div>

            <br />
            <br />


            <asp:LinkButton ID="SaveButtonn" runat="server"
                CssClass="btn btn-primary"
                ValidationGroup="FormularioHabitacion"
                OnClick="SaveButtonn_Click">
                Guardar
            </asp:LinkButton>
            <asp:HyperLink runat="server" CssClass="btn"
                NavigateUrl="~/ListaHabitacion.aspx">
                Cancelar
            </asp:HyperLink>

            <asp:HiddenField ID="HabitacionIdHiddenField" runat="server"
                Value="0" />
        </div>
    </section>


</asp:Content>

