<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sdelete.aspx.cs" Inherits="StudentManagementSystem.View.S.Sdelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid center-block" style="height: auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom: 30px;">

            <div class="row" style="height: 680px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
                <h1 class="text-center text-info"></h1>
                <div class="col-lg-12">
                    <label id="SIL" runat="server" class="form-label">Student ID</label>
                    <input class="form-control" type="number" id="sid" runat="server" required />
                </div>
                <div class="col-lg-12">
                    <label id="SNL" runat="server" class="form-label">Student Name</label>
                    <input class="form-control" type="text" id="sname" runat="server" required />
                </div>
                <div class="col-lg-12">
                    <label for="SAL" runat="server" class="form-label">Address</label>
                    <input class="form-control" id="sadd" runat="server" type="text" required />
                </div>
                <div class="col-lg-12">
                    <label for="SAL" class="form-label">Age</label>
                    <input class="form-control" type="number" id="sage" runat="server" required />
                </div>
                <div class="col-lg-12">
                    <label for="SPL" class="form-label">Phone</label>
                    <input class="form-control" type="number" id="sphn" runat="server" required />
                </div>
                <div class="col-lg-12">
                    <label for="SRL" class="form-label">Registration No</label>
                    <input class="form-control" id="sreg" runat="server" type="number" required />
                </div>
                <div class="col-lg-12">
                    <label for="SSL" class="form-label">Session</label>
                    <input class="form-control" id="sses" runat="server" type="text" required />
                </div>
                <div class="col-lg-12">
                    <label for="SDL" class="form-label">Department</label>
                    <input class="form-control" id="sdept" runat="server" type="text" required />
                </div>
                <div class="col-lg-12">
                    <label for="SCL" class="form-label">Course</label>
                    <input class="form-control" id="scourse" runat="server" type="text" required />
                </div>
                <asp:Button ID="StudenDeletebtn" runat="server" Text="Delete" class="btn btn-danger" Style="margin-top: 20px; width: 100%;" OnClientClick="if(!confirm('Are You Sure!! You Want To Delete This Information?'))return false" OnClick="StudenDeletebtn_Click" />
            </div>
        </div>

</asp:Content>
