using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.C
{
    public partial class Cupdate : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    tbl_Course Cu = db.tbl_Course.Where(x => x.ID == id).SingleOrDefault();
                    cname.Value = Cu.CourseName;
                    cduration.Value =Convert.ToString(Cu.Duration);
                }
                else
                {
                    Response.Redirect("~/View/C/Course.aspx");
                }
            }
        }

        protected void CourseUpdatetbtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            tbl_Course Cu = db.tbl_Course.Where(x => x.ID == id).SingleOrDefault();
            Cu.CourseName = cname.Value;
            Cu.Duration = Convert.ToInt32(cduration.Value);
            db.SaveChanges();
            Response.Redirect("~/View/C/Course.aspx");

        }
    }
}
