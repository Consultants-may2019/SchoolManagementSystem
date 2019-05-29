<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Design.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
        <br />
    <div class=" row">
    <div class="form-group col-md-4">
    <label for="txtSchool ID">
        School ID</label>
      <asp:TextBox ID="SID" runat="server" CssClass="form-control"  placeholder="Enter School ID" />
        </div>
        </div>
         <div style="width:230px; margin-right:50px; margin-left:50px">
        <asp:Button ID="Button1" runat="server" CssClass="form-control"  OnClick="Button1_Click" Text="Submit" BackColor="#3399FF" Width="198px" />
        </div>
   
        <br />
   
</asp:Content>