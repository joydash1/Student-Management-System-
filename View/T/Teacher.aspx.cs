using StudentManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem.View
{
    public partial class Teacher : System.Web.UI.Page
    {
        TeachersEntities db = new TeachersEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataList1.DataSource = db.tbl_teacher.OrderBy(x => x.ID).ToList();
                DataList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tbl_teacher t = new tbl_teacher();
            t.TeacherID = Convert.ToInt32(tid.Value);
            t.TeacherName = tname.Value;
            t.Subject = tsub.Value;
            t.Department = tdept.Value;
            t.Address = tadd.Value;
            t.Age = Convert.ToInt32(tage.Value);
            t.Phone = Convert.ToInt32(tphn.Value);
            t.DateOfJoin = Convert.ToInt32(tdoj.Value);
            db.tbl_teacher.Add(t);
            db.SaveChanges();
            DataList1.DataSource = db.tbl_teacher.OrderBy(x => x.ID).ToList();
            DataList1.DataBind();
            tid.Value="";
            tname.Value="";
            tsub.Value = "";
            tdept.Value = "";
            tadd.Value="";
            tage.Value = "";
            tphn.Value = "";
            tdoj.Value = "";

        }
    }
}