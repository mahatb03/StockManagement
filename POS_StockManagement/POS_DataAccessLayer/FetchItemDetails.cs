using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_UtilityLayer;

namespace POS_DataAccessLayer
{
    public class FetchItemDetails
    {
        
        public DataTable color()
        {
            string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("spColor", con);
            DataTable dtcolor = new DataTable();
            da.Fill(dtcolor);
            con.Close();
            return dtcolor;
        }

        public DataTable brand()
        {
            string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("spBrand", con);
            DataTable dtbrand = new DataTable();
            da.Fill(dtbrand);
            con.Close();
            return dtbrand;

        }


        public DataTable size()
        {
            string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("spSize", con);
            DataTable dtsize = new DataTable();
            da.Fill(dtsize);
            con.Close();
            return dtsize;
        }


        public DataTable category()
        {
            string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("spCategory", con);
            DataTable dtcategory = new DataTable();
            da.Fill(dtcategory);
            con.Close();
            return dtcategory;
        }
    }
}
