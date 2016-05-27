<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="Reservas.Editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

      <header>
        <nav>
            <ul id ="Menu">
                <li>Menu</li>
               
                <li><a id ="A1" runat="server" href="~/Insertar.aspx">Insertar</a></li>
                <li><a id ="A2" runat="server" href="~/Mostar.aspx">Consultar</a></li>
                <li><a id ="A3" runat="server" href="~/Eliminar.aspx">Eliminar</a></li>

                 <li>Editar</li>
                 
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly ="True"/>
                <asp:TemplateField HeaderText="Nombre Solicitante">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtNombreSolicitante" runat="server" Text='<%# Bind("NombreSolicitante") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NombreSolicitante") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Elemento A Prestar">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtElementoAPrestar" runat="server" Text='<%# Bind("ElementoAPrestar") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ElementoAPrestar") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Prestamo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtFechaPrestao" runat="server" Text='<%# Bind("FechaPrestao") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("FechaPrestao") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Observaciones">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtObservaciones" runat="server" Text='<%# Bind("Observaciones") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Observaciones") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha Devolucion">
                    <EditItemTemplate>
                        <asp:TextBox ID="Txtfechadevolucion" runat="server" Text='<%# Bind("fechadevolucion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("fechadevolucion") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    </div>
          <p>
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
