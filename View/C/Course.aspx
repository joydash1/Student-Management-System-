<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="StudentManagementSystem.View.C.Course" %>
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

           
         
            <asp:Button ID="Coursetbtn" runat="server" Text="Submit"  class="btn btn-success" style="margin-top: 20px; width: 100%;" OnClick="Coursetbtn_Click"/>
         
        </div>

                                        <%--  dataShowingpart --%>
        <div class="row" style="height: auto; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <div class="container" style="padding-inline:100px; padding-top:40px; padding-left:10px;">
                <table class="table table-responsive table-bordered" style="border:3px solid grey">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Course Name</th>
                            <th>Course Duration</th>
                                                      
                        </tr>
                    </thead>

                    <tbody>
                        <asp:DataList ID="CourseDataList" runat="server" class="table table-responsive table-bordered" style="border:3px solid grey">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label0" runat="server" Text='<% #Eval("ID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("CourseName")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<% #Eval("Duration")%>'></asp:Label>
                                    </td>
                                                                               
                                    <td>
                                        <input type="button" value="Update" class="btn btn-info btn-sm" onclick='CourseUpdate(<%#Eval("ID")%>)'/>
                                    </td>
                                    <td>
                                        <input type="button" value="Delete" class="btn btn-danger btn-sm" onclick='CourseDelete(<%#Eval("ID")%>)' />
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

        function CourseUpdate(id) {
            
            window.location.href = "Cupdate.aspx?id=" + id;

        }
        function CourseDelete(id2) {
            window.location.href = "Cdelete.aspx?id2=" + id2;
        }
    </script>   

</asp:Content>
