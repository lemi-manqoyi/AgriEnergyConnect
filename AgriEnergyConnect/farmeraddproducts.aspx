<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="farmeraddproducts.aspx.cs" Inherits="AgriEnergyConnect.farmeraddproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<%--container for responsive web pages--%>
<div class="container" >

    <div class="row">

         <%--1st card with 6/12 of container column fill--%>
        <div class="col-md-6 " >

            <%--card to add products--%>
            <div class="card">
            <div class="card-body">

                <%--head image--%>
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100" src="images/apple.png" />
                        </center>
                    </div>
                </div>

                <%--account status--%>
                <div class="row">
                    <div class="col">
                        <center>
                           <h4>Adding Products</h4>
                            <asp:Label class="badge rounded-pill text-bg-primary" ID="Label1" runat="server" Text="Product Add Status" ></asp:Label>
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

                <%--product name--%>
                <div class="row">
                   <div class="col-md-12">                            
                         <div class="form">
                           <label>Product Name</label>
                           <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Product Name" ></asp:TextBox>
                       </div>     
                   </div> 
                </div>
                <br />

                <%--product category--%>
                <div class="row">
                  <div class="col-md-12">                            
                        <div class="form">
                          <label>Product Category</label>
                          <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="Category" ></asp:TextBox>
                      </div>     
                  </div>
                </div>
                <br />

                <%--production date--%>
                <div class="row">
                  <div class="col-md-12">                            
                        <div class="form">
                          <label>Product Production Date</label>
                          <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="Production Date" TextMode="Date" ></asp:TextBox>
                      </div>     
                  </div>
                </div>

             <br />

                <%--post product button--%>
                <div class="row">
                    <div class="col">
                        <div class="d-grid gap-2 col-md-6 mx-auto" >
                             <asp:Button class="btn btn-primary btn-lg" ID="Button" runat="server" Text="Post Product"  ></asp:Button>
                        </div>
                    </div>   
                </div>
                  
  
                <br />
                <br />
                </div>
                
            </div>

        </div>

         <%--second card with 6/12 of container column fill--%>
        <div class="col-md-6 " >

         <%--card to view added products--%>
        <div class="card">
            <div class="card-body">

               <%-- head image--%>
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100" src="images/apple.png" />
                        </center>
                    </div>
                </div>

                <%--product listing--%>
                <div class="row">
                    <div class="col">
                        <center>
                           <h4>Your Listed Products</h4>
                            <asp:Label class="badge rounded-pill text-bg-primary" ID="Label2" runat="server" Text="Information on Listed Products" ></asp:Label>
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

                <%--data grid view--%>
                <div class="row">
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>

                </div>
        
           </div>

        </div>

   </div>

</div>

</asp:Content>
