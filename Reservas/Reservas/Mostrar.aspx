<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mostrar.aspx.cs" Inherits="Reservas.Mostrar" %>

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
                 <li>Mostrar</li>
                 <li><a id ="A2" runat="server" href="~/Editar.aspx">Editar</a></li>
                <li><a id ="A1" runat="server" href="~/Insertar.aspx">Insertar</a></li>
                <li><a id ="A3" runat="server" href="~/Eliminar.aspx">Eliminar</a></li>
                
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="NombreSolicitante" HeaderText="Nombre Solicitante" />
                <asp:BoundField DataField="ElementoAPrestar" HeaderText="Elemento A Prestar" />
                <asp:BoundField DataField="FechaPrestao" HeaderText="Fecha Prestamo" />
                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                <asp:BoundField DataField="fechadevolucion" HeaderText="Fecha Devolucion" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
