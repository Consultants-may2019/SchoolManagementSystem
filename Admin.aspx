<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Design.Addnewstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class=" form-row">
        <div class="form-group col-md-6">
            
           <label for="txtSchoolName">School Name</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSchoolName" ErrorMessage="*"></asp:RequiredFieldValidator>
              <asp:TextBox ID="txtSchoolName" runat="server" CssClass="form-control" placeholder="Enter School Name" OnTextChanged="txtSchoolName_TextChanged" AutoPostBack="True" />
        </div>
        
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel1" runat="server" CssClass="form-group" Visible="false">
             <label for="txtAddress">Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtAddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control" placeholder="Enter Address" ForeColor="#FF3300"/>  
           </asp:Panel>
                </div> 
         
          
        <div class="form-group col-md-6">
              <asp:Panel ID="Panel2" runat="server" CssClass="form-group" Visible="false">
             <label for="txtPincode">Pincode</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPincode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TxtPincode" runat="server" CssClass="form-control" placeholder="Enter Pin-code"/>  
      </asp:Panel>
                 </div>
               
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel3" runat="server" CssClass="form-group" Visible="false">
             <label for="txtPhone">Phone</label>
             <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone"/>
        </asp:Panel>
                </div>
        
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel4" runat="server" CssClass="form-group" Visible="false">
           <label for="txtState">State:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="State" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="State" runat="server" CssClass="form-control" placeholder="Enter state" OnSelectedIndexChanged="State_SelectedIndexChanged" AutoPostBack="True">
          </asp:DropDownList>
               </asp:Panel>
         </div>
             
        <div class="form-group col-md-6">
             <asp:Panel ID="Panel5" runat="server" CssClass="form-group" Visible="false">
              <label for="txtCity"> City:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="City" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="City" runat="server" CssClass="form-control" placeholder="Enter state">
               </asp:DropDownList>
                 </asp:Panel>
            </div>
            
            
         <div class="form-group col-md-6">
              <asp:Panel ID="Panel6" runat="server" CssClass="form-group" Visible="false">
              <label for="txtBoard"> Board:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Board" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="Board" runat="server" CssClass="form-control" placeholder="Enter Board">
              </asp:DropDownList>
                  </asp:Panel>
            </div>
               
          
        <div class="form-group col-md-6">
            <asp:Panel ID="Panel7" runat="server" CssClass="form-group" Visible="false">
                  <label for="txtZone"> Zone:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Zone" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="Zone" runat="server" CssClass="form-control" placeholder="Enter zone">
                  <asp:ListItem value="" text="">Please Select Zone</asp:ListItem>
                  <asp:ListItem>South</asp:ListItem>
                   <asp:ListItem Value="North"></asp:ListItem>
                   <asp:ListItem Value="West"></asp:ListItem>
                   <asp:ListItem Value="East"></asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            
            </div>
             
                 
         <div class="form-group col-md-6">
              <asp:Panel ID="Panel8" runat="server" CssClass="form-group" Visible="false">
              <label for="txtZone">Date:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Calender" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="Calender" runat="server" TextMode="Date" CssClass="form-control" OnTextChanged="Calender_TextChanged"></asp:TextBox>
              <br />
             </asp:Panel>
             </div>
        
               </div>
     
 
              <div style="width: 579px; margin-left: 246px">
                <asp:Button ID="Button1" runat="server" CssClass ="form-control" OnClick="Button1_Click" Text="Submit" BackColor="#3399FF" Visible="False" />
                  
                  </div>
         <br />
    
        
    
</asp:Content>
