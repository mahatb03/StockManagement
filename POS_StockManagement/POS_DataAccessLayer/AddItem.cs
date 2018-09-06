using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace POS_DataAccessLayer
{
   public class AddItem
    {
        public bool addItem(string productId , decimal price, string color, string brand, string category, int size, DateTime dateofentry)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand cmd = new SqlCommand("spAddItem", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ProductId", productId);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.Parameters.AddWithValue("@Color", color);
            cmd.Parameters.AddWithValue("@Brand", brand);
            cmd.Parameters.AddWithValue("@Category", category);
            cmd.Parameters.AddWithValue("@Size", size);
            cmd.Parameters.AddWithValue("@DateofEntry", dateofentry);
            
            

            int i = cmd.ExecuteNonQuery();
            con.Close();

            if(i >=1)
            {
                return true;
            }

            else
            {
                return false;
            }

        }
    }
}
