<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="AgriEnergyConnect.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    
    <section>
        <img   height="100" src="images/agri_landing.jpg" class="img-fluid mx-auto d-block" alt="..." />
    </section>

    <section>
        <div class="container">

            <div class="row" >
                <div class="col-12" >
                    <center>
                         <h1>Welcome To Agri-Energy Connect</h1>
                         <h3 class="text-nowrap">Our Mission Is To Bridge Sustainable Agriculture With Green Energy Solutions Through A Digital EcoSystem</h3>
                     </center>
                </div>
            </div>

            <div class="row" >
                <div class="col-md-4">
                    <center>
                        <img width="150" src="images/apple.png" />
                        <h4><b>Add Harvests Item</b></h4>
                        <p class="text-justify">Farmers can add products they harvest to their profile and view their own product listing</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150" src="images/Search-PNG.png" />
                        <h4><b>Search For Products</b></h4>
                        <p class="text-justify">Employees can view all products from specific farmers, and use filters for product searching</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img width="150" src="images/add_farmer.png" />
                        <h4><b>Add Farmers</b></h4>
                        <p class="text-justify">Employees can add new farmer profiles</p>
                </center>
            </div>
           </div>

        </div>
    </section>
     

</asp:Content>
