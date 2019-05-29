<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DeleteEmp.aspx.cs" Inherits="Design.DeleteEmp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <br />
        <br/>
           <div class="form-group col-md-4">
              <label for="txtSchoolName">Employee ID</label>
              <asp:TextBox ID="Emplyoeeid" runat="server" CssClass="form-control" placeholder="Enter Employee ID" />
               <br />
            </div> 
          <div style="width: 306px;margin-left:50px;margin-right:50px;" >
          <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Delete"  BackColor="#3399FF" OnClick="Button1_Click"/>
              <br />
              </div>
</asp:Content>
