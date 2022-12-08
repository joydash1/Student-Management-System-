<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cdelete.aspx.cs" Inherits="StudentManagementSystem.View.C.Cdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 280px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Course Delete Form</h1>         

            <div class="col">
                <label id="CNL" runat="server" class="form-label">Course Name</label>
                <input class="form-control"  type="text" id="cname" runat="server"  required />
            </div>
            <div class="col">
                <label for="CD" runat="server" class="form-label">Course Duration</label>
                <input class="form-control" id="cduration" runat="server" type="text" placeholder="In Month..." required />
            </div>
         
            <asp:Button ID="CourseDeletetbtn" runat="server" Text="Delete"  class="btn btn-danger" style="margin-top: 20px; width: 100%;" OnClientClick="if(!confirm('Are You Sure Want To Delete This Form?')) return false" OnClick="CourseDeletetbtn_Click"/>
         
        </div>
</div>
</asp:Content>
