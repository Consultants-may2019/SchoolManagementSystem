<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Design.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <br/>

        <div class=" form-row">
        <div class="form-group col-md-6">
           <label for="txtEmployeeName">Employee First Name</label>
              <asp:TextBox ID="txtEmployeeFirstName" runat="server" CssClass="form-control" placeholder="Enter Employee First Name" />
        </div>   
            
        <div class="form-group col-md-6">
           <label for="txtSchoolName">Employee Last Name</label>
              <asp:TextBox ID="TxtEmployeeLastName" runat="server" CssClass="form-control" placeholder="Enter Employee Last Name" />
        </div> 
             <div class="form-group col-md-6">
             <label for="txtSchoolName">Email</label>
              <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Enter Email Name" />
        </div>

        <div class="form-group col-md-6">
             <label for="txtAddress">Address</label><asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="Enter Address" ForeColor="#FF3300"/>  
            </div>        
       
        <div class="form-group col-md-6">
             <label for="txtPhone">Phone</label>
             <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone"/>
         </div>
                
         <div class="form-group col-md-6">
              <label for="School"> School Name:</label><asp:DropDownList ID="School" runat="server" CssClass="form-control" placeholder="Enter Board" AutoPostBack="True">
              </asp:DropDownList> 
            </div>
                     
         <div class="form-group col-md-6">
              <label for="Designation"> Designation :</label><asp:DropDownList ID="Ds" runat="server" CssClass="form-control" placeholder="Enter Board" AutoPostBack="True">
              </asp:DropDownList> 
            </div>

        </div>
        <div  style="width:304px; margin-right:50px;margin-left:450px;">
       <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Add"  Width="300px" BackColor="#3399FF" OnClick="Button1_Click1" />
           
        </div> 
    <br />
</asp:Content>
