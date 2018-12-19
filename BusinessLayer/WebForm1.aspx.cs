using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusinessLayer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            insPanel.Visible = false;
            delPannel.Visible = false;
            getPanel.Visible = false;
            updPanel.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            insPanel.Visible = true;
            delPannel.Visible = false;
            getPanel.Visible = false;
            updPanel.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            delPannel.Visible = true;
            insPanel.Visible = false;
            getPanel.Visible = false;
            updPanel.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            getPanel.Visible = false;
            updPanel.Visible = true;
            delPannel.Visible = false;
            insPanel.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataDataContext dbConetxt = new DataDataContext();
            GridView1.DataSource = dbConetxt.bookDetails;
            GridView1.DataBind();
        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            try
            {
                using (DataDataContext dbConetxt = new DataDataContext())
                {
                    
                    bookDetail newBook = new bookDetail
                    {
                        Email_Id = Email.Value,
                        Name = Name.Value,
                        Age = Age.Value,
                        Mobile = Mobile.Value,
                        RoomType = rType.Value,
                        ChechInDate = cIn.Value,
                        CheckOutDate = cOut.Value
                    };
                    dbConetxt.bookDetails.InsertOnSubmit(newBook);
                    dbConetxt.SubmitChanges();
                    Response.Write(Email.Value + "All details is added to Table");


                }
            }
            catch(Exception )
            {
                Response.Write("Insertion Error");
            }

        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            try
            {
                using (DataDataContext dbConetxt = new DataDataContext())
                {
                    bookDetail newBook = dbConetxt.bookDetails.SingleOrDefault(x => x.Email_Id == dEmail.Value);
                    dbConetxt.bookDetails.DeleteOnSubmit(newBook);
                    dbConetxt.SubmitChanges();

                }
            }
            catch (Exception)
            {
                Response.Write("Invalid Data Selection");
            }

        }

        protected void getBtn_Click(object sender, EventArgs e)
        {
            try
            {
                getPanel.Visible = true;
                delPannel.Visible = false;
                insPanel.Visible = false;
                using (DataDataContext dbConetxt = new DataDataContext())
                {
                    bookDetail newBook = dbConetxt.bookDetails.SingleOrDefault(x => x.Email_Id == upEmail.Value);
                    uName.Value = newBook.Name;
                    uAge.Value = newBook.Age;
                    uMobile.Value = newBook.Mobile;
                    urType.Value = newBook.RoomType;
                    ucIn.Value = newBook.ChechInDate;
                    ucOut.Value = newBook.CheckOutDate;

                }
            }
            catch (Exception)
            {
                Response.Write("Invalid updation");
                getPanel.Visible = false;
            }
        }

        protected void updBtn_Click(object sender, EventArgs e)
        {
            try
            {
                using (DataDataContext dbConetxt = new DataDataContext())
                {
                    bookDetail newBook = dbConetxt.bookDetails.SingleOrDefault(x => x.Email_Id == upEmail.Value);
                    newBook.Name = uName.Value;
                    newBook.Age = uAge.Value;
                    newBook.Mobile = uMobile.Value;
                    newBook.RoomType = urType.Value;
                    newBook.ChechInDate = ucIn.Value;
                    newBook.CheckOutDate = ucOut.Value;
                    dbConetxt.SubmitChanges();

                }
            }
            catch(Exception)
            {
                Response.Write("Invalid updation format");
            }
        }
    }
}