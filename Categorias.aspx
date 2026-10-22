<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="appPF_InventarioVetCare.Categorias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;700&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid mt-4">
            <h2 class="mb-4">Configuración de Categorías</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card shadow-sm p-4">
                        <h5>Nueva Categoría</h5>
                        <hr />
                        <div class="mb-3">
                            <label class="form-label">Nombre</label>
                            <asp:TextBox ID="txtNombreCat" runat="server" CssClass="form-control" placeholder="Ej. Juguetes"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnGuardarCat" runat="server" Text="Registrar" CssClass="btn btn-primary w-100" OnClick="btnGuardarCat_Click" />
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="card shadow-sm p-4">
                        <asp:GridView ID="gvCategorias" runat="server" CssClass="table table-hover"
                            AutoGenerateColumns="False" DataKeyNames="id_categoria" OnRowDeleting="gvCategorias_RowDeleting">
                            <Columns>
                                <asp:BoundField DataField="id_categoria" HeaderText="ID" />
                                <asp:BoundField DataField="nombre" HeaderText="CATEGORÍA" />
                                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-danger btn-sm" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
