using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    mabase2Entities mb = new mabase2Entities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Display();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Display();
    }

    public void Display()
    {
        
       
        DataGrid1.DataSource = mb.film2.ToList();
       DataGrid1.DataBind();
       // Label1.Text = mb.film2.Find(2).titre;
    }


    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        Display();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        Display();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Add New Rec")
        {
            Button2.Text = "Cancel";
            DataGrid1.ShowFooter = true;
            
        }
        else
        {
            Button2.Text = "Add New Rec";
            DataGrid1.ShowFooter = false;
        }
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        TextBox id = (TextBox)DataGrid1.Items[e.Item.ItemIndex].Cells[3].Controls[0];
        TextBox titre = (TextBox)DataGrid1.Items[e.Item.ItemIndex].Cells[4].Controls[0];
        TextBox genre = (TextBox)DataGrid1.Items[e.Item.ItemIndex].Cells[5].Controls[0];
        TextBox realisateur = (TextBox)DataGrid1.Items[e.Item.ItemIndex].Cells[6].Controls[0];
        TextBox photo = (TextBox)DataGrid1.Items[e.Item.ItemIndex].Cells[7].Controls[0];

        film2 f = new film2();
        f.genre = genre.Text;
        f.titre = titre.Text;
        f.realisateur = realisateur.Text;
        f.photo = photo.Text;
        f.id = Int32.Parse(id.Text);
        mb.film2.Add(f);
       
        mb.SaveChanges();
        Label1.Text = titre.Text;
        DataGrid1.EditItemIndex = -1;
        Display();
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName.Equals("AddNew"))
        {

            TextBox titre = (TextBox)e.Item.FindControl("titre_txt");
           // TextBox genre = (TextBox)e.Item.Controls[0];
            Label1.Text = "ok    "+titre.Text;
        }
        else
        { Label1.Text = "ok2"; }
    }
} 