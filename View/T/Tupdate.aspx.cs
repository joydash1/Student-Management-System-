using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.T
{
    public partial class Tupdate : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                if (Request.QueryString["id"]!=null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    tbl_teacher t = db.tbl_teacher.Where(x => x.ID == id).SingleOrDefault();
                    tid.Value = Convert.ToString( t.TeacherID);
                    tname.Value = Convert.ToString( t.TeacherName);
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

        protected void tUpdatebtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            tbl_teacher t = db.tbl_teacher.Where(x => x.ID == id).SingleOrDefault();
            t.TeacherID = Convert.ToInt32(tid.Value);
            t.TeacherName = tname.Value;
            t.Subject = tsub.Value;
            t.Department = tdept.Value;
            t.Address = tadd.Value;
            t.Age = Convert.ToInt32(tage.Value);
            t.Phone = Convert.ToInt32(tphn.Value);
            t.DateOfJoin = Convert.ToInt32(tdoj.Value);
            db.SaveChanges();
            Response.Redirect("~/View/T/Teacher.aspx");
        }
    }
}