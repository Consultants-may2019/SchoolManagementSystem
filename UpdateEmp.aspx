<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UpdateEmp.aspx.cs" Inherits="Design.UpdateEmp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div class=" form-row">
             <div class="form-group col-md-6">
           <label for="txtSchoolName">Employee ID</label>
              <asp:TextBox ID="Emplyoeeid" runat="server" CssClass="form-control" placeholder="Enter Employee ID" OnTextChanged="Emplyoeeid_TextChanged" />
        </div> 

        <div class="form-group col-md-6">
            <asp:Panel ID="Panel1" runat="server" CssClass="form-group" Visible="false">
           <label for="txtEmployeeName">Employee First Name</label>
              <asp:TextBox ID="txtEmployeeFirstName" runat="server" CssClass="form-control" placeholder="Enter Employee First Name" />
        </asp:Panel>
                </div>   
            
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel2" runat="server" CssClass="form-group" Visible="false">
           <label for="txtSchoolName">Employee Last Name</label>
              <asp:TextBox ID="TxtEmployeeLastName" runat="server" CssClass="form-control" placeholder="Enter Employee Last Name" />
        </asp:Panel>
                </div> 
             <div class="form-group col-md-6">
                 <asp:Panel ID="Panel3" runat="server" CssClass="form-group" Visible="false">
             <label for="txtSchoolName">Email</label>
              <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Enter Email Name" />
        </asp:Panel>
                     </div>

        <div class="form-group col-md-6">
            <asp:Panel ID="Panel4" runat="server" CssClass="form-group" Visible="false">
            <label for="txtAddress">Address</label><asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="Enter Address" ForeColor="#FF3300"/>  
            </asp:Panel>
                </div>        
       
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel5" runat="server" CssClass="form-group" Visible="false"> 
            <label for="txtPhone">Phone</label>
             <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone"/>
        </asp:Panel>
                </div>
                
         <div class="form-group col-md-6">
             <asp:Panel ID="Panel6" runat="server" CssClass="form-group" Visible="false"> 
             <label for="txtSchool"> School Name:</label><asp:DropDownList ID="School" runat="server" CssClass="form-control" placeholder="Enter Board">
              </asp:DropDownList> 
            </asp:Panel>
                 </div>
                     
         <div class="form-group col-md-6">
             <asp:Panel ID="Panel7" runat="server" CssClass="form-group" Visible="false"> 
             <label for="txtDesignation"> Designation :</label><asp:DropDownList ID="Ds" runat="server" CssClass="form-control" placeholder="Enter Board">
              </asp:DropDownList> 
            </asp:Panel>
                 </div>

        </div>
        <div  style="width:304px; margin-right:50px;margin-left:450px;">
       <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Update"  Width="300px" BackColor="#3399FF" OnClick="Button1_Click" />
           
        </div> 
    <br />
</asp:Content>

