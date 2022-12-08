using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.S
{
    public partial class Sdelete : System.Web.UI.Page
    {
        TeachersEntities sdb = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    tbl_Student student = sdb.tbl_Student.Where(x => x.ID == id).SingleOrDefault();
                    sid.Value = Convert.ToString(student.StudentID);
                    sname.Value = Convert.ToString(student.StudentName);
                    sadd.Value = Convert.ToString(student.Address);
                    sage.Value = Convert.ToString(student.Age);
                    sphn.Value = Convert.ToString(student.Phone);
                    sreg.Value = Convert.ToString(student.RegistrationNo);
                    sdept.Value = Convert.ToString(student.Department);
                    sses.Value = Convert.ToString(student.Session);
                    scourse.Value = Convert.ToString(student.Course);
                }
                else
                {
                    Response.Redirect("~/View/S/Student.aspx");
                }
            }
        }

        protected void StudenDeletebtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            tbl_Student student = sdb.tbl_Student.Where(x => x.ID == id).SingleOrDefault();
            sdb.tbl_Student.Remove(student);
            sdb.SaveChanges();
            Response.Redirect("~/View/S/Student.aspx");
        }
    }
}