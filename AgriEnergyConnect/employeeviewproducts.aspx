<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="employeeviewproducts.aspx.cs" Inherits="AgriEnergyConnect.employeeviewproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    
<%--container for responsive web pages--%>
<div class="container-fluid" >

    <div class="row">

         <%--1st card with 8/12 of container column fill--%>
        <div class="col-md-9 " >

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

        <%--2nd card with 4/12 of container column fill--%>
        <div class="col-md-3 " >

      <%--card to add new farmer--%>
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
                     <h4>Adding New Farmer Profile</h4>
                  </center>
              </div>
          </div>

          <%--horizontal line--%>
          <div class="row">
              <div class="col">
                  <center>
                     <hr />
                      <br />
                      
                  </center>
              </div>
          </div>

         
       <br />
           <div class="row">
                 <div class="col">
                     <div class="d-grid gap-2 col-md-6 mx-auto" >
                         <center>
                            <a href="farmersignup.aspx" ><input class="btn btn-primary w=100" ID="Button1" type="button" value="Add New Farmer"/></a>              
                         </center>
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
