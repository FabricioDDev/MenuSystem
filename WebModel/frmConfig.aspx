<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmConfig.aspx.cs" Inherits="WebModel.frmConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="row justify-content-center">
            <div class="col-auto">
                <button class="btn btn-primary" style="position:absolute; right:1px;">Volver</button>
                <h1>Config</h1>
            </div>
            <div class="col-auto">
                <h2>Destacados</h2>
                <asp:GridView ID="GvTop" CssClass="table-secondary" runat="server"></asp:GridView>
                <div class="d-grid gap-2 d-md-block">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Button" />
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Button" />
                </div>
            </div>
            <div class="col-auto">
                <h2>Destacados</h2>
                <asp:GridView ID="GvCategory" runat="server"></asp:GridView>
                <div class="d-grid gap-2 d-md-block">
                    <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Button" />
                    <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" Text="Button" />
                </div>
            </div>
            <div class="col-auto">
                <h2>Platos</h2>
                <asp:GridView ID="GvFood" runat="server"></asp:GridView>
                <div class="d-grid gap-2 d-md-block">
                    <asp:Button ID="Button5" CssClass="btn btn-primary" runat="server" Text="Button" />
                    <asp:Button ID="Button6" CssClass="btn btn-primary" runat="server" Text="Button" />
                </div>
            </div>
        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>
