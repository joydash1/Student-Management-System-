using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.C
{
    public partial class Cdelete : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id2"] != null)
                {

                    int id2 = int.Parse(Request.QueryString["id2"]);
                    tbl_Course Ce = db.tbl_Course.Where(x => x.ID == id2).SingleOrDefault();
                    cname.Value = Ce.CourseName;
                    cduration.Value = Convert.ToString( Ce.Duration);

                }
                else
                {
                    Response.Redirect("~/View/C/Course.aspx");
                }
            }

        }

        protected void CourseDeletetbtn_Click(object sender, EventArgs e)
        {
            int id2 = int.Parse(Request.QueryString["id2"]);
            tbl_Course Ce = db.tbl_Course.Where(x => x.ID == id2).SingleOrDefault();
            db.tbl_Course.Remove(Ce);
            db.SaveChanges();
            Response.Redirect("~/View/C/Course.aspx");
        }
    }
}