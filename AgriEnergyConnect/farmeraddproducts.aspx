<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="farmeraddproducts.aspx.cs" Inherits="AgriEnergyConnect.farmeraddproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<%--container for responsive web pages--%>
<div class="container" >

    <div class="row">

         <%--card with 8 of container column fill--%>
        <div class="col-md-8 mx-auto" >

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
                           <asp:TextBox CssClass="form-control" ID="txtbxProductName" runat="server" placeholder="Product Name" ></asp:TextBox>
                       </div>     
                   </div> 
                </div>
                <br />

                <%--product category--%>
                <div class="row">
                  <div class="col-md-12">                            
                        <div class="form">
                          <label>Product Category</label>
                          <asp:TextBox CssClass="form-control" ID="txtbxCategory" runat="server" placeholder="Category" ></asp:TextBox>
                      </div>     
                  </div>
                </div>
                <br />

                <%--production date--%>
                <div class="row">
                  <div class="col-md-12">                            
                        <div class="form">
                          <label>Product Production Date</label>
                          <asp:TextBox CssClass="form-control" ID="txtbxDate" runat="server" placeholder="Production Date" TextMode="Date" ></asp:TextBox>
                      </div>     
                  </div>
                </div>

             <br />

                <%--post product button--%>
                <div class="row">
                    <div class="col">
                        <div class="d-grid gap-2 col-md-6 mx-auto" >
                             <asp:Button class="btn btn-primary btn-lg" ID="btnPost" runat="server" Text="Post Product" OnClick="btnPost_Click"  ></asp:Button>
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
