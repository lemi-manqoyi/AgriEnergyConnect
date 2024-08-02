<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="farmerlogin.aspx.cs" Inherits="AgriEnergyConnect.farmerlogin" %>
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
                                    <img width="180" src="images/farmer_icon.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Farmer Login</h3>
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
                                    <label>Farmer Email</label>
                                    <asp:TextBox CssClass="form-control" ID="txtbxUsername" runat="server" placeholder="Email Address" ></asp:TextBox>
                                </div>
                                
                                <br />

                                <div class="form">
                                    <label>Farmer Password</label>
                                    <asp:TextBox CssClass="form-control" ID="txtbxPassword" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>

                               <br />

                                <div class="d-grid gap-2 col-md-6 mx-auto" >
                                     <asp:Button class="btn btn-success btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"   ></asp:Button>
                                </div>
                                
                                <br />


                            </div>
                        </div>
                        </div>
                        
                    </div>
                    <a href="homepage.aspx"><< Back To Home Page</a> <br /><br />
                </div>
            </div>
            
        </div>
        
</asp:Content>
