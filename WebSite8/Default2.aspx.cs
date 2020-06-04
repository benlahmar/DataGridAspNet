using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    mabase2Entities1 mb = new mabase2Entities1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Display();
    }

    public void Display()
    {
        DataGrid1.DataSource = mb.film2.ToList();
        DataGrid1.DataBind();

    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
      
       
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        Display();
        FileUpload cc = new FileUpload();
        cc.Enabled = true;
       
        e.Item.Cells[4].Controls.Add(cc);
        Label1.Text = "..."+ e.Item.Cells[4].Controls.Count;
       
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        Display();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        Label1.Text = "suppresion du film dont le id = ....." + e.Item.Cells[3].Text;
        int idfilm = Int32.Parse(e.Item.Cells[3].Text);
        film2 f=mb.film2.Find(idfilm);
        mb.film2.Remove(f);
        mb.SaveChanges();
        Display();
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
      //  e.Item.ItemIndex

            int idfilm = Int32.Parse(((TextBox) e.Item.Cells[3].Controls[0]).Text);
            string titre = ((TextBox)e.Item.Cells[4].Controls[0]).Text;
            string realisateur = ((TextBox)e.Item.Cells[5].Controls[0]).Text;
            string genre = ((TextBox)e.Item.Cells[6].Controls[0]).Text;
            
            film2 f = mb.film2.Find(idfilm);
            f.genre = genre;
            f.realisateur = realisateur;
            f.titre = titre;
            mb.SaveChanges();
            DataGrid1.EditItemIndex = -1;
            Display();


            Label1.Text = idfilm + " ;   " + titre;

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        film2 f = mb.film2.Create();
        f.id = 99;
        f.titre = txt_titre.Text;
        f.realisateur = txt_realisateur.Text;
        f.genre = txt_genre.SelectedValue;
        f.photo = FileUpload1.FileName;
        
        try
        {
            mb.film2.Add(f);
            mb.SaveChanges();
            Display();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.StackTrace;
        }


        FileUpload1.SaveAs(Server.MapPath("imgs/"+f.photo));
    }
    protected void txt_genre_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        if (LinkButton5.Text == "add row")
        {
            DataGrid1.ShowFooter = true;
            LinkButton5.Text = "cancel";

        }
        else
        {
            LinkButton5.Text = "add row";

            DataGrid1.ShowFooter = false;
        }

    }
    protected void FileUpload1_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "imgs/" + FileUpload1.FileName;
    }
}