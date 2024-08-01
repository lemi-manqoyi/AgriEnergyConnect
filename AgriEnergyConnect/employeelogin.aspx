<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="employeelogin.aspx.cs" Inherits="AgriEnergyConnect.employeelogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
     <div class="container" >

     <div class="row">
         <div class="col-md-6 mx-auto" >

             <div class="card">
                 <div class="card-body">

                     <div class="row">
                         <div class="col">
                             <center>
                                 <img width="180" src="images/login_employee.jpg" />
                             </center>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col">
                             <center>
                                <h3>Employee Login</h3>
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
                         <div class="col">
                             <div class="form">
                                 <label>Employees Email</label>
                                 <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Email Address" ></asp:TextBox>
                             </div>
                             
                             <br />

                             <div class="form">
                                 <label>Employees Password</label>
                                 <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                             </div>

                             <br />

                             <div class="d-grid gap-2 col-md-6 mx-auto" >
                                  <asp:Button class="btn btn-success" ID="Button" runat="server" Text="Login"  ></asp:Button>
                             </div>

                             <br />

                             <div class="d-grid gap-2 col-md-6 mx-auto">
                                <a href="usersignup.aspx"><input class="btn btn-info w-100" type="button" ID="Button1" value="Sign-Up"/></a>
                              </div>

                         </div>
                     </div>
                     </div>

                 </div>
             <a href="homepage.aspx"><< Back To Home Page</a><br /><br />
             </div>
         </div>
         
     </div>

</asp:Content>
