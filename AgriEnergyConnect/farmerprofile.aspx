<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="farmerprofile.aspx.cs" Inherits="AgriEnergyConnect.farmerprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<%--container fluid for responsive web pages--%>
<div class="container" >

    <div class="row">

         <%--1st card with 5/12 of container fluid column fill--%>
        <div class="col-md-12 " >

            <div class="card">
            <div class="card-body">

                <%--head image--%>
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100" src="images/add_farmer.png" />
                        </center>
                    </div>
                </div>

                <%--account status--%>
                <div class="row">
                    <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                            <span>Accout Status - </span>
                            <asp:Label class="badge rounded-pill text-bg-primary" ID="Label1" runat="server" Text="Pending Status" ></asp:Label>
                        </center>
                    </div>
                </div>

                <%--horizontal line--%>
                <div class="row">
                    <div class="col">
                        <center>
                           <hr />
                        </center>
                    </div>
                </div>

                <div class="row">
                   <div class="col-md-6">                            
                         <div class="form">
                           <label>First Name</label>
                           <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="First Name" ></asp:TextBox>
                       </div>     
                   </div> 
               
                   <div class="col-md-6">
                       <div class="form">
                           <label>Surname</label>
                           <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="Surname" ></asp:TextBox>
                       </div>
                   </div>
               </div>
                <div class="row">
                  <div class="col-md-6">                            
                        <div class="form">
                          <label>Farm Name</label>
                          <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="Farm Name" ></asp:TextBox>
                      </div>     
                  </div>
                </div>

                <%--password requirements pill--%>
                <div class="row">
                        <div class="col">
                            <center>
                                <br />
                                <span class="badge rounded-pill text-bg-secondary">Password Requirements:</span><br />
                                <label> * 8 Characters Minimum</label><br />
                                <label> * Atleast 1 Capital Letter</label><br />
                                <label> * Atleast 1 Symbol and 1 Number</label>

                            </center>
                           </div>
                   </div>
                       
                    <br />
                <%--login credential pill--%>
                <div class="row">
                        <div class="col">
                            <center>
                               <span class="badge rounded-pill text-bg-secondary">Login Credentials</span>
                            </center>                    
                       </div>
                </div>

                <%--login credential data--%>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form">
                           <label>Username</label>
                           <asp:TextBox Class="form-control" ID="Textbox5" runat="server" placeholder="Email Address" ReadOnly="true" ></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form">
                            <label>Old Password</label>
                            <asp:TextBox Class="form-control" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password" ReadOnly="true" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form">
                            <label> New Password</label>
                            <asp:TextBox Class="form-control" ID="Textbox4" runat="server" placeholder="New Password" TextMode="Password" ></asp:TextBox>  
                        </div>
                    </div>
                  </div><br />

                <%--update button--%>
                <div class="row">
                    <div class="col">
                        <div class="d-grid gap-2 col-md-6 mx-auto" >
                             <asp:Button class="btn btn-primary btn-lg" ID="Button" runat="server" Text="Update"  ></asp:Button>
                        </div>
                    </div>   
                </div>
                  
  
                <br />
                <br />
                </div>
                
            </div>

        </div>

   </div>

</div>

</asp:Content>
