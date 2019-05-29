<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeRecord.aspx.cs" Inherits="Design.EmployeeRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />  
        <div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                            <p class="text-danger">Responsive GridView in ASP.NET </p>  
                            <span class="text-info">Desktop Tablet Phone Different layout </span>  
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="Emprecord" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover">  
                                        <Columns>  
                                          
                                        </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
</asp:Content>
