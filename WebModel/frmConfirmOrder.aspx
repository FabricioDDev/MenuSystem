<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmConfirmOrder.aspx.cs" Inherits="WebModel.frmConfirmOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center" style="background:#606c38;  color:white;  height:100vh;">
        <div class="col-auto p-5">
            <h1>¡¡Ya casi Terminas!!</h1>
            <label class="form-label">Ingresa el Nro de Mesa:</label>
            <asp:TextBox
                ID="TxtTable"
                CssClass="form-control-sm"
                TextMode="Number"
                min="0"
                max="20"
                step="1"
                runat ="server"
            ForeColor="Black"></asp:TextBox>
            <asp:Button ID="BtnConfirm" CssClass="btn btn-success btn-sm" runat="server" OnClick="BtnConfirm_Click" Text="Confirmar" />
        </div>
    </div>
</asp:Content>
