<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmConfirmOrder.aspx.cs" Inherits="WebModel.frmConfirmOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
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
            ></asp:TextBox>
            <asp:Button ID="BtnConfirm" CssClass="btn btn-success" runat="server" OnClick="BtnConfirm_Click" Text="Confirmar" />
        </div>
    </div>
</asp:Content>
