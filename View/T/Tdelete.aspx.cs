using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.T
{

    public partial class Tdelete : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id2"] !=null)
                {
                    int id2 = int.Parse(Request.QueryString["id2"]);
                    tbl_teacher t = db.tbl_teacher.Where(x => x.ID == id2).SingleOrDefault();
                    tid.Value = Convert.ToString(t.TeacherID);
                    tname.Value = Convert.ToString(t.TeacherName);
                    tsub.Value = Convert.ToString(t.Subject);
                    tdept.Value = Convert.ToString(t.Department);
                    tadd.Value = Convert.ToString(t.Address);
                    tage.Value = Convert.ToString(t.Age);
                    tphn.Value = Convert.ToString(t.Phone);
                    tdoj.Value = Convert.ToString(t.DateOfJoin);
                }
                else
                {
                    Response.Redirect("~/View/T/Teacher.aspx");
                }
            }
        }

        protected void tdeletebtn_Click(object sender, EventArgs e)
        {
            int id2 = int.Parse(Request.QueryString["id2"]);
            tbl_teacher t = db.tbl_teacher.Where(x => x.ID == id2).SingleOrDefault();
            db.tbl_teacher.Remove(t);
            db.SaveChanges();
            Response.Redirect("~/View/T/Teacher.aspx");

        }
    }
}