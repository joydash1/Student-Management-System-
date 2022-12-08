using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.D
{
    public partial class Department : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DepartmentDataList.DataSource = db.tbl_Department.OrderBy(x => x.ID).ToList();
                DepartmentDataList.DataBind();
            }
        }

        protected void Departmentbtn_Click(object sender, EventArgs e)
        {
            tbl_Department D = new tbl_Department();
            D.DepartmentName = dname.Value;
            D.HeadOfDepartment = dhn.Value;
            D.DeptHPhone = Convert.ToInt32(dhp.Value);
            db.tbl_Department.Add(D);
            db.SaveChanges();
            DepartmentDataList.DataSource = db.tbl_Department.OrderBy(x => x.ID).ToList();
            DepartmentDataList.DataBind();
            dname.Value = "";
            dhn.Value = "";
            dhp.Value = "";

        }
    }
}