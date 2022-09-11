<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmFinish.aspx.cs" Inherits="WebModel.frmFinish" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .animation{
            height:150px;
            width:150px;
            padding:0px;
            margin:0px;
            animation-name: animation;
            animation-iteration-count: infinite;
            animation-duration:3s;
            position:absolute;
            top:120px;
        }
        @keyframes animation{
            0%{
                top:120px;
            }
            50%{
                top:100px;
            }
            100%{
                top:120px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center" style="background:#606c38;  color:white;  height:100vh;">
        <div class="col p-4">
            <img class="animation" src="animation.png" />
            <h1>¡¡Felicitaciones!!</h1>
            <label>Tu pedido Llegara a tu mesa en minutos! <i class="fas fa-clock"></i></label>
             
        </div>
    </div>
</asp:Content>
