<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Reservas.Eliminar" %>

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
                <li><a id ="A2" runat="server" href="~/Mostrar.aspx">Mostrar</a></li>
                <li><a id ="A3" runat="server" href="~/Editar.aspx">Editar</a></li>
               
                 <li>Eliminar</li>
                 
            </ul>
        </nav>
    </header>


    <form id="form1" runat="server">
    <div>
      <h1>
        Eliminar Reserva
    </h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="NombreSolicitante" HeaderText="Nombre Solicitante" />
                    <asp:BoundField DataField="ElementoAPrestar" HeaderText="Elemento a prestar" />
                    <asp:BoundField DataField="FechaPrestao" HeaderText="Fecha Prestamo" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                    <asp:BoundField DataField="fechadevolucion" HeaderText="Fecha Devolucion" />
                    <asp:TemplateField HeaderText="Eliminar">
                       
                      <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Eliminar" CausesValidation="False" CommandName="Delete"></asp:LinkButton>
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </p>
    </div>
         <p>
            <asp:Label ID="LblMsg" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
