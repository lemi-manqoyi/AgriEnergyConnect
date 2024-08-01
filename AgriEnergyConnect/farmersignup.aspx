<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="farmersignup.aspx.cs" Inherits="AgriEnergyConnect.farmersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

     <div class="container" >

 <div class="row">
     <div class="col-md-8 mx-auto" >

         <div class="card">
             <div class="card-body">

                 <div class="row">
                     <div class="col">
                         <center>
                             <img width="100" src="images/add_new_user.jpg" />
                         </center>
                     </div>
                 </div>

                 <div class="row">
                     <div class="col">
                         <center>
                            <h4>Farmer Sign-Up</h4>
                         </center>
                     </div>
                 </div>

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

                 <div class="row">
                         <div class="col">
                             <center>
                                 <br />
                                 <span class="badge rounded-pill text-bg-secondary">Password Requirements:</span> <br />
                                 <label> * 8 Characters Minimum</label><br />
                                <label> * Atleast 1 Capital Letter</label><br />
                                <label> * Atleast 1 Symbol and 1 Number</label>
                             </center>
                            </div>
                    </div>
                        
                     <br />

                     <div class="row">
                         <div class="col">
                             <center>
                                <span class="badge rounded-pill text-bg-secondary">Login Credentials</span>
                             </center>                    
                        </div>
                 </div>

                 <div class="row">
                     <div class="col">
                         <div class="form">
                            <label>Username</label>
                            <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="Email Address"  ></asp:TextBox>
                        </div>
                         <div class="form">
                             <label>Password</label>
                             <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                         </div>
                         <div class="form">
                             <label> Confirm Password</label>
                             <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
                             
                         </div>

                        <br />

                         <div class="d-grid gap-2 col-md-6 mx-auto" >
                              <asp:Button class="btn btn-success btn-lg" ID="Button" runat="server" Text="Login"  ></asp:Button>
                         </div>
                         
                         <br />


                     </div>
                 </div>
                 </div>
                 
             </div>
             <a href="homepage.aspx"><< Back To Home Page</a> <br />
             <a href="employeeviewproducts.aspx"><< Back To Employee View Products</a> <br /><br />
         </div>
     </div>
     
 </div>

</asp:Content>
