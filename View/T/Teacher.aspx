<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="StudentManagementSystem.View.Teacher" %>
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

            <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-success" style="margin-top: 20px; width: 100%;" OnClick="Button1_Click"/>
         
        </div>

                                        <%--  dataShowingpart --%>
        <div class="row" style="height: auto; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <div class="container" style="padding-inline:100px; padding-top:40px; padding-left:10px;">
                <table class="table table-responsive table-bordered" style="border:3px solid grey">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Teacher ID</th>
                            <th>TeacherName</th>
                            <th>Subject</th>
                            <th>Department</th>
                            <th>Address</th>
                            <th>Age</th>
                            <th>Phone</th>
                            <th>Date of join</th>
                        </tr>
                    </thead>

                    <tbody>
                        <asp:DataList ID="DataList1" runat="server" class="table table-responsive table-bordered" style="border:3px solid grey">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text='<% #Eval("ID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("TeacherID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<% #Eval("TeacherName")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<% #Eval("Subject")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<% #Eval("Department")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<% #Eval("Address")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text='<% #Eval("Age")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text='<% #Eval("Phone")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<% #Eval("DateOfJoin")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <input type="button" value="Update" class="btn btn-info btn-sm" onclick='Update(<%#Eval("ID")%>)'/>
                                    </td>
                                    <td>
                                        <input type="button" value="Delete" class="btn btn-danger btn-sm" onclick='Delete(<%#Eval("ID")%>)' />
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

        function Update(id) {
            //alert(id);
            window.location.href = "Tupdate.aspx?id=" + id;

        }
        function Delete(id2) {
            window.location.href = "Tdelete.aspx?id2=" + id2;
        }
    </script>   


</asp:Content>
