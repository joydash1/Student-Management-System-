using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View.S
{
    public partial class Student : System.Web.UI.Page
    {
        TeachersEntities sdb = new TeachersEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                StudentDataList.DataSource = sdb.tbl_Student.OrderBy(x => x.ID).ToList();
                StudentDataList.DataBind();
            }
        }

        protected void Studentbtn_Click(object sender, EventArgs e)
        {
            tbl_Student student = new tbl_Student();
            student.StudentID = Convert.ToInt32( sid.Value);
            student.StudentName = Convert.ToString( sname.Value );
            student.Address = Convert.ToString( sadd.Value );
            student.Age = Convert.ToInt32(sage.Value);
            student.Phone = Convert.ToInt32(sphn.Value);
            student.RegistrationNo = Convert.ToInt32(sreg.Value);
            student.Department = Convert.ToString(sdept.Value);
            student.Session = Convert.ToInt32(sses.Value);
            student.Course = Convert.ToInt32(scourse.Value);
            sdb.tbl_Student.Add(student);
            sdb.SaveChanges();
            StudentDataList.DataSource = sdb.tbl_Student.OrderBy(x => x.ID).ToList();
            StudentDataList.DataBind();
            sid.Value = "";
            sname.Value = "";
            sadd.Value = "";
            sage.Value = "";
            sphn.Value = "";
            sreg.Value = "";
            sdept.Value = "";
            sses.Value = "";
            scourse.Value = "";
        }
    }
}