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
    public class GetItem : IGetItem
    {
       
        public List<GetItemModel> getItemList()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                DataSet ds = new DataSet();
                SqlCommand cmd = new SqlCommand("spDisplayItem", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);


                List<GetItemModel> listmodel = new List<GetItemModel>();


                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    GetItemModel model = new GetItemModel();
                    model.ProductID = ds.Tables[0].Rows[i]["ProductID"].ToString();
                    model.Price = Convert.ToDecimal(ds.Tables[0].Rows[i]["Price"].ToString());
                    model.Color = ds.Tables[0].Rows[i]["Color"].ToString();
                    model.Brand = ds.Tables[0].Rows[i]["Brand"].ToString();
                    model.Category = ds.Tables[0].Rows[i]["Category"].ToString();
                    model.Size = Convert.ToInt32(ds.Tables[0].Rows[i]["Size"].ToString());
                    model.DateOfEntry = Convert.ToDateTime(ds.Tables[0].Rows[i]["DateOfEntry"].ToString());

                    listmodel.Add(model);
                }

                con.Close();
                return listmodel;

                
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }
    
    
    }
}
