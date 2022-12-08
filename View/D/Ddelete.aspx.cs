using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.D
{
    public partial class Ddelete : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               if( Request.QueryString["id2"] != null)
                {
                    int id2 = int.Parse(Request.QueryString["id2"]);
                    tbl_Department de = db.tbl_Department.Where(x => x.ID == id2).SingleOrDefault();
                    dname.Value = de.DepartmentName;
                    dhn.Value = de.HeadOfDepartment;
                    dhp.Value = Convert.ToString(de.DeptHPhone);

                }
               else
                {
                    Response.Redirect("~/View/D/Department.aspx");
                }
            }
        }

        protected void Departmentbtn_Click(object sender, EventArgs e)
        {         
            int id2 = int.Parse(Request.QueryString["id2"]);
            tbl_Department de = db.tbl_Department.Where(x => x.ID == id2).SingleOrDefault();
            db.tbl_Department.Remove(de);
            db.SaveChanges();
            Response.Redirect("~/View/D/Department.aspx");
        }
    }
}