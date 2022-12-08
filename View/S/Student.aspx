<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentManagementSystem.View.S.Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 680px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Student Registration Form</h1>
            <div class="col-lg-12">
                <label id="SIL" runat="server" class="form-label">Student ID</label>
                <input class="form-control" type="number" id="sid" runat="server"  required />
            </div>
            <div class="col-lg-12">
                <label id="SNL" runat="server" class="form-label">Student Name</label>
                <input class="form-control"  type="text" id="sname" runat="server"  required />
            </div>
            <div class="col-lg-12">
                <label for="SAL" runat="server" class="form-label">Address</label>
                <input class="form-control" id="sadd" runat="server" type="text" required />
            </div>
             <div class="col-lg-12">
                <label for="SAL" class="form-label">Age</label>
                <input class="form-control" type="number" id="sage" runat="server"  required />
            </div>
            <div class="col-lg-12">
                <label for="SPL" class="form-label">Phone</label>
                <input class="form-control" type="number" id="sphn" runat="server" required />
            </div>
            <div class="col-lg-12">
                <label for="SRL" class="form-label">Registration No</label>
                <input class="form-control" id="sreg" runat="server" type="number"  required />
            </div>
             <div class="col-lg-12">
                <label for="SSL" class="form-label">Session</label>
                <input class="form-control" id="sses" runat="server" type="text"  required />
            </div>
            <div class="col-lg-12">
                <label for="SDL" class="form-label">Department</label>
                <input class="form-control" id="sdept" runat="server" type="text" required />
            </div>
            <div class="col-lg-12">
                <label for="SCL" class="form-label">Course</label>
                <input class="form-control" id="scourse" runat="server" type="text"  required />
            </div>
            <asp:Button ID="Studentbtn" runat="server" Text="Submit"  class="btn btn-success" style="margin-top: 20px; width: 100%;" OnClick="Studentbtn_Click"/>
            </div>

                                        <%--  dataShowingpart --%>
        <div class="row" style="height: auto; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <div class="container" style="padding-inline:100px; padding-top:30px; padding-left:10px;">
                <table class="table table-responsive table-bordered" style="border:3px solid grey;">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Student ID</th>
                            <th>Student Name</th>
                            <th>Address</th>
                            <th>Age</th>
                            <th>Phone</th>
                            <th>Registration No</th>
                            <th>Session</th>
                            <th>Department</th>
                            <th>Course</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:DataList ID="StudentDataList" runat="server" class="table table-responsive table-bordered" style="border:3px solid grey">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label0" runat="server" Text='<% #Eval("ID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("StudentID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<% #Eval("StudentName")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<% #Eval("Address")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<% #Eval("Age")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<% #Eval("Phone")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text='<% #Eval("RegistrationNo")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text='<% #Eval("Session")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<% #Eval("Department")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text='<% #Eval("Course")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <input type="button" value="Update" class="btn btn-info btn-sm" onclick='StudentUpdate(<%#Eval("ID")%>)'/>
                                    </td>
                                    <td>
                                        <input type="button" value="Delete" class="btn btn-danger btn-sm" onclick='StudentDelete(<%#Eval("ID")%>)' />
                                    </td>
                                </tr>
                            </ItemTemplate>

                        </asp:DataList>
                    </tbody>
                </table>
            </div>

        </div>
      
</div>
    <script>
        function StudentUpdate(id) {
            
           window.location.href = ("Supdate.aspx?id=" + id);
        }
        function StudentDelete(id) {
            window.location.href = ("Sdelete.aspx?id=" + id);
        }
    </script>

</asp:Content>
