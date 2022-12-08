using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.D
{
    public partial class Dupdate : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    tbl_Department De = db.tbl_Department.Where(x => x.ID == id).SingleOrDefault();
                    dname.Value = De.DepartmentName;
                    dhn.Value = De.HeadOfDepartment;
                    dhp.Value = Convert.ToString( De.DeptHPhone);
                }
                else
                {
                    Response.Redirect("~/View/D/Department.aspx");
                }
            }
        }

        protected void Departmentbtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            tbl_Department De = db.tbl_Department.Where(x => x.ID == id).SingleOrDefault();
            De.DepartmentName = dname.Value;
            De.HeadOfDepartment = dhn.Value;
            De.DeptHPhone = Convert.ToInt32(dhp.Value);
            db.SaveChanges();
            Response.Redirect("~/View/D/Department.aspx");

        }
    }
}