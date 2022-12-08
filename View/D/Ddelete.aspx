<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ddelete.aspx.cs" Inherits="StudentManagementSystem.View.D.Ddelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 330px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Delete Department Form</h1>         

            <div class="col">
                <label id="DNL" runat="server" class="form-label">Department Name</label>
                <input class="form-control"  type="text" id="dname" runat="server" placeholder="Your Full Name please...." required />
            </div>
            <div class="col">
                <label for="DHNL" runat="server" class="form-label">Department Head Name</label>
                <input class="form-control" id="dhn" runat="server" type="text" placeholder="Address pleasee...." required />
            </div>

            <div class="col">
                <label for="DHPL" class="form-label">Department Head Phone </label>
                <input class="form-control" id="dhp" runat="server" type="text" placeholder="Your Subject Name please...." required />
            </div>
         
            <asp:Button ID="Departmentbtn" runat="server" Text="Delete"  class="btn btn-danger" style="margin-top: 20px; width: 100%;" OnClientClick="if(!confirm('Are you Sure! You Want To Delete This Form?')) return false" OnClick="Departmentbtn_Click"/>
         
        </div>
</div>
</asp:Content>
