using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.C
{
    public partial class Course : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CourseDataList.DataSource = db.tbl_Course.OrderBy(x => x.ID).ToList();
                CourseDataList.DataBind();
            }
        }

        protected void Coursetbtn_Click(object sender, EventArgs e)
        {
            tbl_Course C = new tbl_Course();
            C.CourseName = cname.Value;
            C.Duration = Convert.ToInt32( cduration.Value);
            db.tbl_Course.Add(C);
            db.SaveChanges();
            CourseDataList.DataSource = db.tbl_Course.OrderBy(x => x.ID).ToList();
            CourseDataList.DataBind();
            cname.Value = "";
            cduration.Value = "";
        }
    }
}