<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="StudentManagementSystem.View.D.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container-fluid center-block" style="height:auto; border: 5px solid black; margin-top: 30px; background-color: pink; padding-bottom:30px;">

        <div class="row" style="height: 330px; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <h1 class="text-center text-info">Department</h1>         

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
         
            <asp:Button ID="Departmentbtn" runat="server" Text="Submit"  class="btn btn-success" style="margin-top: 20px; width: 100%;" OnClick="Departmentbtn_Click"/>
         
        </div>

                                        <%--  dataShowingpart --%>
        <div class="row" style="height: auto; border: 5px solid grey; margin: 5px; margin-top: 30px; background-color: wheat; padding-inline: 20px;">
            <div class="container" style="padding-inline:100px; padding-top:40px; padding-left:10px;">
                <table class="table table-responsive table-bordered" style="border:3px solid grey">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Department Name</th>
                            <th>Department Head Name</th>
                            <th>Department Head Phone</th>                          
                        </tr>
                    </thead>

                    <tbody>
                        <asp:DataList ID="DepartmentDataList" runat="server" class="table table-responsive table-bordered" style="border:3px solid grey">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label0" runat="server" Text='<% #Eval("ID")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<% #Eval("DepartmentName")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<% #Eval("HeadOfDepartment")%>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<% #Eval("DeptHPhone")%>'></asp:Label>
                                    </td>                                           
                                    <td>
                                        <input type="button" value="Update" class="btn btn-info btn-sm" onclick='DepartmentUpdate(<%#Eval("ID")%>)'/>
                                    </td>
                                    <td>
                                        <input type="button" value="Delete" class="btn btn-danger btn-sm" onclick='DepartmentDelete(<%#Eval("ID")%>)' />
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

        function DepartmentUpdate(id) {
            
            window.location.href = "Dupdate.aspx?id=" + id;

        }
        function DepartmentDelete(id2) {
            window.location.href = "Ddelete.aspx?id2=" + id2;
        }
    </script>   

</asp:Content>
