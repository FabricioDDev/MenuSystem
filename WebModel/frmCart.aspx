<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmCart.aspx.cs" Inherits="WebModel.frmCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col align-items-center justify-content-center">
            <h1 class="text-center">Tu Pedido</h1>
            <asp:Label ID="LblClean" runat="server" Text=""></asp:Label>
            <asp:GridView 
                ID="GvCart"
                CssClass="table table-dark table-striped table-responsive"
                DataKeyNames="Id"
                OnSelectedIndexChanged="GvCart_SelectedIndexChanged"
                AutoGenerateColumns="false"
                runat="server"
            >
                 <Columns>
                     <asp:CommandField ShowSelectButton="true" SelectText="Eliminar" />
                     <asp:BoundField DataField="Name" HeaderText="Plato"/>
                     <asp:BoundField DataField="Price" HeaderText="Precio"/>
                  </Columns>
            </asp:GridView>
            <div class="align-self-center">
                 <label>Total: $</label>
                <asp:Label ID="LblTotal" runat="server" Text=""></asp:Label>
            </div>
            <asp:Button ID="BtnFinish" CssClass="btn btn-success align-self-center" OnClick="BtnFinish_Click" runat="server" Text="Finalizar" />
        </div>
    </div>        
</asp:Content>
