<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertar.aspx.cs" Inherits="Reservas.Insertar" %>

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
 
                <li>Insertar</li>
                  <li><a id ="A1" runat="server" href="~/Editar.aspx">Editar</a></li>
                 <li><a id ="A2" runat="server" href="~/Mostrar.aspx">Mostrar</a></li>
                <li><a id ="A3" runat="server" href="~/Eliminar.aspx">Eliminar</a></li>
            </ul>
        </nav>
    </header>
    <form id="form1" runat="server">
    <div>
         <h1>Insertar Reserva</h1>
        <table class="auto-style1">
            <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Identificacion"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Nombre Solicitante"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtNombreSolicitante" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Elemento a Prestar"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtElementoAPrestar" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Fecha Prestamo"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtFechaPrestao" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Observaciones"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="TxtObservaciones" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class ="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Fecha Devolucion"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="Txtfechadevolucion" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
            <td class="auto-style2"> &nbsp;

            </td>
            <td>
                <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
                <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" />
            </td>
            </tr>
            </table>

    
    </div>
        <p>
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>



