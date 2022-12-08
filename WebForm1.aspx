<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StudentManagementSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="background-color: lightgreen; margin: 30px; height: auto; border: 5px solid green;">

        <div class="container-fluid" style="background-color: cadetblue; margin: 30px; padding-inline: 20px; border: 5px initial aqua;">
            <h1 style="text-align: center; justify-content: center; display: flex;">Student Registration Form</h1>
            <div class="row">
                <div class="col-md-4">
                    <label class="form-label" style="text-transform: fullsize-kana">Student ID</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-8">
                    <label class="form-label" style="text-transform: fullsize-kana">Full Name</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <label class="form-label" style="text-transform: fullsize-kana">Home Address</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-4">
                    <label class="form-label" style="text-transform: fullsize-kana">Course</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <label class="form-label" style="text-transform: fullsize-kana">Age</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-4">
                    <label class="form-label" style="text-transform: fullsize-kana">Roll</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-4">
                    <label class="form-label" style="text-transform: fullsize-kana">Phone No</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <label class="form-label" style="text-transform: fullsize-kana">Registration No</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-3">
                    <label class="form-label" style="text-transform: fullsize-kana">Session</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
                <div class="col-md-6">
                    <label class="form-label" style="text-transform: fullsize-kana">Department</label>
                    <input class="form-control" style="background-color: aqua" />
                </div>
            </div>
            <button class="btn btn-success" style="border-block: hidden; width: 100%; margin-top: 10px; margin-bottom: 10px;">Submit</button>

        </div>
        <div class="container-fluid" style="background-color: cadetblue; margin: 30px; padding-inline: 20px; border: 5px initial aqua;">



            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">StudentID</th>
                            <th scope="col">StudentName</th>
                            <th scope="col">Address</th>
                            <th scope="col">Age</th>
                            <th scope="col">Phone</th>
                            <th scope="col">RegistrationNo</th>
                            <th scope="col">Session</th>
                            <th scope="col">Department</th>
                            <th scope="col">Course</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:DataList ID="StudentDatalist" runat="server" class="table-responsive">
                            <ItemTemplate>
                               
                            </ItemTemplate>
                        </asp:DataList>

                    </tbody>
                </table>
            </div>
        </div>



    </div>
</asp:Content>
