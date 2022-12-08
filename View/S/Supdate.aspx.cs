using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.S
{
    public partial class Supdate : System.Web.UI.Page
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

        protected void StudenUpdatetbtn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            tbl_Student student = sdb.tbl_Student.Where(x => x.ID == id).SingleOrDefault();
            student.StudentID = Convert.ToInt32(sid.Value);
            student.StudentName = Convert.ToString(sname.Value);
            student.Address = Convert.ToString(sadd.Value);
            student.Age = Convert.ToInt32(sage.Value);
            student.Phone = Convert.ToInt32(sphn.Value);
            student.RegistrationNo = Convert.ToInt32(sreg.Value);
            student.Department = Convert.ToString(sdept.Value);
            student.Session = Convert.ToInt32(sses.Value);
            student.Course = Convert.ToInt32(scourse.Value);
            sdb.SaveChanges();
            Response.Redirect("~/View/S/Student.aspx");
        }
    }
}