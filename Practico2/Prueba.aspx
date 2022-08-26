<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="Practico2.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="documento" runat="server"></asp:TextBox>
    <asp:Button ID="buscar" runat="server" Text="Buscar" OnClick="buscar_Click" />
    <asp:SqlDataSource ID="PersonasDS" runat="server" ConnectionString="<%$ ConnectionStrings:Practico2ConnectionString %>" SelectCommand="SELECT * FROM [Personas] WHERE ([Documento] = @Documento)">
        <SelectParameters>
            <asp:ControlParameter ControlID="documento" Name="Documento" PropertyName="Text" Type="Int32" />
        </SelectParameters>

    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="PersonasDS">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
        </Columns>
    </asp:GridView>

    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label  ID="LabelNombre" runat="server" Text="NOMBRE:"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxNombre" runat="server" OnTextChanged="Nombre_TextChanged"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="LabelApellido" runat="server" Text="APELLIDO"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="LabelDocumento" runat="server" Text="DOCUMENTO"></asp:Label>
    <br />
    <asp:TextBox ID="TextBoxDocumento" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonRegistrar" runat="server" ForeColor="#33CC33" Text="REGISTRAR" OnClick="ButtonRegistrar_Click" />
    <br />
    <br />

</asp:Content>
