<%@ Page Title=""  Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmTop.aspx.cs" Inherits="WebModel.Top" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
     <div class="row" style="background:#606c38; color:white; height:100vh;">               
        <div class="col">
            <h1 class="h1 p-4">¡¡Nuestros Destacados!!</h1>
            <asp:Repeater ID="rtrCard" runat="server">
                <ItemTemplate>
                    <div class="card h-10" style="background:#606c38;">
                      <div class="card-body">
                           <h5 class="card-title"><%#Eval("Name") %></h5>
                           <p class="card-text"><%#Eval("Description") %></p>
                           <div style="display:flex; flex-flow:row nowrap">
                              <label>Precio: $</label>
                              <asp:Label ID="LblPrice" runat="server" Text='<%#Eval("Price")%>'></asp:Label>
                           </div>
                           <asp:Button ID="BtnAdd" CssClass="btn btn-success" OnClick="BtnAdd_Click" CommandArgument='<%#Eval("Id")%>' runat="server" Text="+" />
                      </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
     </div>
                    <a href="frmCart.aspx">
                        <div style="
                            position:fixed;
                            bottom:10px; 
                            right:2px; 
                            display:flex; 
                            flex-flow:row nowrap; 
                            justify-content:center; 
                            align-items:center; 
                            color:white;   
                            background-color:#198754; 
                            width:20vh; 
                            height:5vh; 
                            border-radius:20px;
                         ">
                            <asp:Label ID="Label1" runat="server" Text="Cant:"></asp:Label>
                            <asp:Label ID="LblOrder" runat="server" Text="0"></asp:Label>
                            <div style="border-left:solid 1px white; margin-left:5px; padding-left:3px;">
                                <i class="fas fa-shopping-bag"></i>
                            </div>
                       </div>
                   </a>
</asp:Content>
