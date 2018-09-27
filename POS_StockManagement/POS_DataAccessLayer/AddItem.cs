using POS_UtilityLayer;
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
   public class AddItem : IAddItem
    {
        public bool addItem(AddItemModel model)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand cmd = new SqlCommand("spAddItem", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ProductId", model.ProductID);
                cmd.Parameters.AddWithValue("@Price", model.Price);
                cmd.Parameters.AddWithValue("@Color", model.Color_ID);
                cmd.Parameters.AddWithValue("@Brand", model.Brand_ID);
                cmd.Parameters.AddWithValue("@Category", model.Category_ID);
                cmd.Parameters.AddWithValue("@Size", model.Size_ID);
                cmd.Parameters.AddWithValue("@DateofEntry", model.DateOfEntry);



                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (i >= 1)
                {
                    return true;
                }

                else
                {
                    return false;
                }
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }
            
    }
}
