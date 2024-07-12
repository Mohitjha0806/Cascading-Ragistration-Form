using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    private object txt_City;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //{
        //    ddl_Region.Items.Clear();
        //}
        if (!IsPostBack)
        {
            //tbl.Visible = true;
            DataTable dt = new DataTable();

            dt.Columns.Add("S.No.", typeof(int));
            dt.Columns.Add("First Name", typeof(string));
            dt.Columns.Add("Last Name", typeof(string));
            dt.Columns.Add("Email", typeof(string));
            dt.Columns.Add("Mobile No.");
            dt.Columns.Add("Street Address", typeof(string));
            dt.Columns.Add("State", typeof(string));
            dt.Columns.Add("City", typeof(string));
            dt.Columns.Add("Region", typeof(string));
            dt.Columns.Add("Date", typeof(string));
            dt.Columns.Add("Time", typeof(string));
            dt.Columns.Add("Services");
            ViewState["data"] = dt;
        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

        DataGrid1.Visible = true;

        DataTable dt = (DataTable)ViewState["data"];

        DataColumn SnoColumn = new DataColumn("S.No.", typeof(int));
        DataColumn FnameColumn = new DataColumn("First Name", typeof(string));
        DataColumn LnameColumn = new DataColumn("Last Name", typeof(string));
        DataColumn EmailColumn = new DataColumn("Email", typeof(string));
        DataColumn MobileColumn = new DataColumn("Mobile No.");
        DataColumn SAdressColumn = new DataColumn("Street Address", typeof(string));
        DataColumn StateColumn = new DataColumn("State", typeof(string));
        DataColumn CityColumn = new DataColumn("City", typeof(string));
        DataColumn RegionColumn = new DataColumn("Region", typeof(string));
        DataColumn DateColumn = new DataColumn("Date", typeof(string));
        DataColumn TimeColumn = new DataColumn("Time", typeof(string));
        DataColumn ServicesColumn = new DataColumn("Services");


        DataRow newRow = dt.NewRow();

        newRow["S.No."] = dt.Rows.Count + 1;
        newRow["First Name"] = txt_Fname.Text;
        newRow["Last Name"] = txt_Lname.Text;
        newRow["Email"] = Txt_Email.Text;
        newRow["Mobile No."] = Txt_Tel.Text;
        newRow["Street Address"] = txt_Address.Text;
        newRow["State"] = ddl_State.Text;
        newRow["City"] = ddl_City.Text;
        newRow["Region"] = ddl_Region.Text;
        newRow["Date"] = txt_Date.Text;
        newRow["Time"] = txt_Time.Text;
        newRow["Services"] = cbl_Services.Text;

        dt.Rows.Add(newRow);


        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();


        //ddl_Region.Items.Clear();
    }


    protected void txt_State_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_City.Items.Clear();

        if (ddl_State.SelectedIndex == 0)
        {
            ddl_City.Items.Clear();
        }
        else if (ddl_State.SelectedIndex == 1)
        {
            ddl_Region.Items.Clear();
            ddl_City.Items.Insert(0, new ListItem("Select", "Select"));
            ddl_City.Items.Insert(1, new ListItem("Bhopal", "Bhopal"));
            ddl_City.Items.Insert(2, new ListItem("Gwalior", "Gwalior"));
            ddl_City.Items.Insert(3, new ListItem("Jabalpur", "Jabalpur"));
            ddl_City.Items.Insert(4, new ListItem("Ujjain", "Ujjain"));
            ddl_City.Items.Insert(5, new ListItem("Indore", "Indore"));

        }
        else if (ddl_State.SelectedIndex == 2)
        {
            ddl_City.Items.Insert(0, new ListItem("Select", "0"));
            ddl_City.Items.Insert(1, new ListItem("Lakhnow", "Lakhnow"));
            ddl_City.Items.Insert(2, new ListItem("Pragraj", "Pragraj"));
            ddl_City.Items.Insert(3, new ListItem("Varanshi", "Varanshi"));
            ddl_City.Items.Insert(4, new ListItem("Mathra", "Mathra"));
            ddl_City.Items.Insert(5, new ListItem("Gurugram", "Gurugram"));
            ddl_Region.Items.Clear();

        }
        else if (ddl_State.SelectedIndex == 3)
        {
            ddl_Region.Items.Clear();
            ddl_City.Items.Insert(0, new ListItem("Gandhinagar", "0"));
            ddl_City.Items.Insert(1, new ListItem("Ahemdabad", "1"));
            ddl_City.Items.Insert(2, new ListItem("Surat", "2"));
            ddl_City.Items.Insert(3, new ListItem("Kandla", "3"));
            ddl_City.Items.Insert(4, new ListItem("Vadodara", "4"));

        }
        else if (ddl_State.SelectedIndex == 4)
        {
            ddl_Region.Items.Clear();
            ddl_City.Items.Insert(0, new ListItem("Jaipur", "0"));
            ddl_City.Items.Insert(1, new ListItem("Kota", "1"));
            ddl_City.Items.Insert(2, new ListItem("Jodhpur", "2"));
            ddl_City.Items.Insert(3, new ListItem("Jaisalmer", "3"));
            ddl_City.Items.Insert(4, new ListItem("Bikaner", "4"));
        }
        else if (ddl_State.SelectedIndex == 5)
        {
            ddl_Region.Items.Clear();
            ddl_City.Items.Insert(0, new ListItem("Patna", "0"));
            ddl_City.Items.Insert(1, new ListItem("Gya", "1"));
            ddl_City.Items.Insert(2, new ListItem("Maharajganj", "2"));
            ddl_City.Items.Insert(3, new ListItem("Sivan", "3"));
            ddl_City.Items.Insert(4, new ListItem("Nalnanda", "4"));
        }

    }

    protected void ddl_City_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_City.SelectedIndex == 0)
        {
            ddl_Region.Items.Clear();
        }

        else if (ddl_City.SelectedIndex == 1)
        {
            ddl_Region.Items.Clear();

            ddl_Region.Items.Insert(0, new ListItem("New Bhopal", "1"));
            ddl_Region.Items.Insert(1, new ListItem("Arera Colony", "2"));
            ddl_Region.Items.Insert(2, new ListItem("Old Bhopal", "3"));
            ddl_Region.Items.Insert(3, new ListItem("M.P. Nagar", "4"));
            ddl_Region.Items.Insert(4, new ListItem("Avadhpuri", "5"));

        }
        else if (ddl_City.SelectedIndex == 2)
        {
            ddl_Region.Items.Clear();
            ddl_Region.Items.Insert(0, new ListItem("New City Center", "1"));
            ddl_Region.Items.Insert(1, new ListItem("City Center", "2"));
            ddl_Region.Items.Insert(2, new ListItem("Lashkar", "3"));
            ddl_Region.Items.Insert(3, new ListItem("Badagaon", "4"));
            ddl_Region.Items.Insert(4, new ListItem("Gola Ka Mandir,", "5"));

        }
        else if (ddl_City.SelectedIndex == 3)
        {
            ddl_Region.Items.Clear();
            ddl_Region.Items.Insert(0, new ListItem("Panagar", "1"));
            ddl_Region.Items.Insert(1, new ListItem("Barela", "2"));
            ddl_Region.Items.Insert(2, new ListItem("Katni", "3"));
            ddl_Region.Items.Insert(3, new ListItem("Bengali Colony", "4"));
            ddl_Region.Items.Insert(4, new ListItem("Tilhari", "5"));

        }
        else if (ddl_City.SelectedIndex == 4)
        {
            ddl_Region.Items.Clear();
            ddl_Region.Items.Insert(0, new ListItem("Nanakheda", "1"));
            ddl_Region.Items.Insert(1, new ListItem("Nagziri", "2"));
            ddl_Region.Items.Insert(2, new ListItem("Rishi Nagar", "3"));
            ddl_Region.Items.Insert(3, new ListItem("Freeganj", "4"));
            ddl_Region.Items.Insert(4, new ListItem("Nagda", "5"));

        }
        else if (ddl_City.SelectedIndex == 5)
        {
            ddl_Region.Items.Clear();
            ddl_Region.Items.Insert(0, new ListItem("Vijay Nagar", "1"));
            ddl_Region.Items.Insert(1, new ListItem("Mahalaxmi Nagar", "2"));
            ddl_Region.Items.Insert(2, new ListItem("Super Corridor", "3"));
            ddl_Region.Items.Insert(3, new ListItem("Rau", "4"));
            ddl_Region.Items.Insert(4, new ListItem("Chandan Nagar.", "5"));

        }
        if (ddl_State.SelectedIndex == 2)
        {
           if (ddl_City.SelectedIndex == 1)
            {
                ddl_Region.Items.Clear();
                ddl_Region.Items.Insert(0, new ListItem("GOMTI NAGAR", "0"));
                ddl_Region.Items.Insert(1, new ListItem("INDIRA NAGAR", "1"));
                ddl_Region.Items.Insert(2, new ListItem("ALAMBAGH", "2"));
                ddl_Region.Items.Insert(3, new ListItem("ALIGANJ", "3"));
                ddl_Region.Items.Insert(4, new ListItem("MAHANAGAR", "4"));
            }
            else if (ddl_City.SelectedIndex == 2)
            {
                ddl_Region.Items.Clear();
                ddl_Region.Items.Insert(0, new ListItem("Manauri bajar", "0"));
                ddl_Region.Items.Insert(1, new ListItem("Bamrauli", "1"));
                ddl_Region.Items.Insert(2, new ListItem("Jhalwa", "2"));
                ddl_Region.Items.Insert(3, new ListItem("Jhunsi", "3"));
                ddl_Region.Items.Insert(4, new ListItem("Naini", "4"));
            }
            else if (ddl_City.SelectedIndex == 3)
            {
                ddl_Region.Items.Clear();
                ddl_Region.Items.Insert(0, new ListItem("Shivpur ", "0"));
                ddl_Region.Items.Insert(1, new ListItem("Lanka", "1"));
                ddl_Region.Items.Insert(2, new ListItem("Sarnath", "2"));
                ddl_Region.Items.Insert(3, new ListItem("Chitaipur", "3"));
                ddl_Region.Items.Insert(4, new ListItem("Ramnagar ", "4"));
            }
            else if (ddl_City.SelectedIndex == 4)
            {
                ddl_Region.Items.Clear();
                ddl_Region.Items.Insert(0, new ListItem("Govardhan ", "0"));
                ddl_Region.Items.Insert(1, new ListItem("Vrindavan Road", "1"));
                ddl_Region.Items.Insert(2, new ListItem("Mathura Vrindavan Marg", "2"));
                ddl_Region.Items.Insert(3, new ListItem("Vrindavan", "3"));
                ddl_Region.Items.Insert(4, new ListItem("Govardhan Parikrama Marg", "4"));
            }
            else if (ddl_City.SelectedIndex == 5)
            {
                ddl_Region.Items.Clear();
                ddl_Region.Items.Insert(0, new ListItem("South City 1", "0"));
                ddl_Region.Items.Insert(1, new ListItem("Sohna Road", "1"));
                ddl_Region.Items.Insert(2, new ListItem("Palam Vihar", "2"));
                ddl_Region.Items.Insert(3, new ListItem("MG Road", "3"));
                ddl_Region.Items.Insert(4, new ListItem("Sushant Lok 1", "4"));
            }

        }
        

    }
}