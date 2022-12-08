<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cupdate.aspx.cs" Inherits="StudentManagementSystem.View.C.Cupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 280px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Course</h1>         

            <div class="col">
                <label id="CNL" runat="server" class="form-label">Course Name</label>
                <input class="form-control"  type="text" id="cname" runat="server"  required />
            </div>
            <div class="col">
                <label for="CD" runat="server" class="form-label">Course Duration</label>
                <input class="form-control" id="cduration" runat="server" type="text" placeholder="In Month..." required />
            </div>
         
            <asp:Button ID="CourseUpdatetbtn" runat="server" Text="Update"  class="btn btn-info" style="margin-top: 20px; width: 100%;" OnClick="CourseUpdatetbtn_Click"/>
         
        </div>
</div>
</asp:Content>
