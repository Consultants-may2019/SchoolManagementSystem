<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Design.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class=" form-row">
    <div class="form-group col-md-6">
    <label for="txtSchoolid">
        School ID</label>
      <asp:TextBox ID="SID" runat="server" CssClass="form-control" placeholder="Enter School Id" OnTextChanged="SID_TextChanged" AutoPostBack="True" BorderStyle="Groove" />
        </div>
        <div class="form-group col-md-6">
    <label for="txtSchoolName">School Name</label>
            <asp:Panel ID="Panel1" runat="server" CssClass="form-group" Visible="false">
      <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" placeholder="Enter School Name" />
        </asp:Panel>
                </div>       
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel2" runat="server" CssClass="form-group" Visible="false">
      <label for="txtAddress">
        Address</label>
    <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"/>
            </asp:Panel>
                </div>        
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel3" runat="server" CssClass="form-group" Visible="false">
     <label for="txtPincode">
        Pincode</label>
    <asp:TextBox ID="TxtPincode" runat="server" CssClass="form-control" placeholder="Enter Pin-code"/>
            </asp:Panel>
                </div>
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel4" runat="server" CssClass="form-group" Visible="false">
      <label for="txtPhone">
        Phone</label>
    <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone"/>
            </asp:Panel>
                </div>
        
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel5" runat="server" CssClass="form-group" Visible="false">
         <label for="txtState">
        State:</label>
    <asp:DropDownList ID="State" runat="server" CssClass="form-control" placeholder="Enter state"  AutoPostBack="True" OnSelectedIndexChanged="State_SelectedIndexChanged">
  </asp:DropDownList>
                </asp:Panel>
            </div>
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel6" runat="server" CssClass="form-group" Visible="false">
     <label for="txtCity">
         
        City:</label>
    <asp:DropDownList ID="City" runat="server" CssClass="form-control" placeholder="Enter state">
  </asp:DropDownList>
            </asp:Panel>
            </div>
            
         <div class="form-group col-md-6">
             <asp:Panel ID="Panel7" runat="server" CssClass="form-group" Visible="false">
     <label for="txtBoard">
        Board:</label>
    <asp:DropDownList ID="Board" runat="server" CssClass="form-control" placeholder="Enter Board" OnSelectedIndexChanged="Board_SelectedIndexChanged">
  </asp:DropDownList>
                 </asp:Panel>
            </div>

        <div class="form-group col-md-6">
         <asp:Panel ID="Panel8" runat="server" CssClass="form-group" Visible="false">   
      <label for="txtZone">
        Zone:</label>
    <asp:DropDownList ID="Zone" runat="server" CssClass="form-control" placeholder="Enter zone">
    <asp:ListItem value="" text="">Please Select Zone</asp:ListItem>
        <asp:ListItem>South</asp:ListItem>
        <asp:ListItem Value="North"></asp:ListItem>
        <asp:ListItem Value="West"></asp:ListItem>
        <asp:ListItem Value="East"></asp:ListItem>
  </asp:DropDownList>
             </asp:Panel>
            </div>
         <div class="form-group col-md-6">
             <asp:Panel ID="Panel9" runat="server" CssClass="form-group" Visible="false">
              <label for="txtZone">
        Date:</label>
      <asp:TextBox ID="Calender" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox> 
             </asp:Panel>
                 </div>
        </div>
             <br />
              <div style="width: 374px; margin-left: 452px; margin-right:150px;">
              &nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button1" runat="server" CssClass="form-control" OnClick ="Button1_Click" Text="Submit" Class="btn btn-success" Visible=False BackColor="#3399FF"  Width="375px" />
            <br />
            </div>   

</asp:Content>
