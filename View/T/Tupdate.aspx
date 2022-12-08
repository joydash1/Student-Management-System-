<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tupdate.aspx.cs" Inherits="StudentManagementSystem.View.T.Tupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 620px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Teacher Form</h1>

            <div class="col">
                <label id="TIL" runat="server" class="form-label">Teacher ID</label>
                <input class="form-control" type="number" id="tid" runat="server" placeholder="Your ID please...." required />
            </div>

            <div class="col">
                <label id="TNL" runat="server" class="form-label">Name</label>
                <input class="form-control"  type="text" id="tname" runat="server" placeholder="Your Full Name please...." required />
            </div>
            <div class="col">
                <label for="TAL" runat="server" class="form-label">Address</label>
                <input class="form-control" id="tadd" runat="server" type="text" placeholder="Address pleasee...." required />
            </div>

            <div class="col">
                <label for="TSL" class="form-label">Subject</label>
                <input class="form-control" id="tsub" runat="server" type="text" placeholder="Your Subject Name please...." required />
            </div>
            <div class="col">
                <label for="TDL" class="form-label">Department</label>
                <input class="form-control" id="tdept" runat="server" type="text" placeholder="Your Department Name please...." required />
            </div>
            <div class="col">
                <label for="TAL" class="form-label">Age</label>
                <input class="form-control" type="number" id="tage" runat="server" placeholder="Your Age please...." required />
            </div>


            <div class="col">
                <label for="TPL" class="form-label">Phone</label>
                <input class="form-control" type="number" id="tphn" runat="server" placeholder="Your Age please...." required />
            </div>
            <div class="col">
                <label for="TJL" class="form-label">Date Of Join </label>
                <input class="form-control" type="datetime" id="tdoj" runat="server" placeholder="Your Registration No. please...." required />
            </div>

            <asp:Button ID="tUpdatebtn" runat="server" Text="Update"  class="btn btn-info" style="margin-top: 20px; width: 100%;" OnClick="tUpdatebtn_Click"/>
         
        </div>
</div>
</asp:Content>
