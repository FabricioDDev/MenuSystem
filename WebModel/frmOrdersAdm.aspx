<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmOrdersAdm.aspx.cs" Inherits="WebModel.frmOrdersAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .btn-success{
            position:absolute;
            bottom:1px;
        }
    </style>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="row justify-content-center">

               
            <div class="col-auto">
                <button class="btn btn-primary" style="position:absolute; left:1px;">Config</button>
                <h1>Pedidos</h1>
            </div>
            
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <asp:Repeater ID="RptCard" runat="server">
                        <ItemTemplate>
                             <div class="card text-bg-success mb-3">
                              <div class="card-header">
                                  <label>Mesa </label>
                                  <label><%#Eval("Table")%></label>
                              </div>
                                  <div class="card-body">
                                     <label style="padding:5px;"><%#Eval("FoodList")%></label>
                                   <div style="padding:25px;">
                                       <label>Total: $</label>
                                       <label><%#Eval("TotalPay")%></label>
                                   </div>
                                   <asp:Button ID="BtnActive" CssClass="btn btn-success" runat="server" Text="Finalizar" />
                                  </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>
