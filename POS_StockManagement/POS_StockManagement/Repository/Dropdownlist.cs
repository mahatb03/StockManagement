using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using POS_StockManagement.Models;
using POS_UtilityLayer;

namespace POS_StockManagement.Repository
{
    public class Dropdownlist
    {
        public Tuple<List<SelectListItem>, List<SelectListItem>, List<SelectListItem>, List<SelectListItem>> InitModel()
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();

                SqlCommand cmd = new SqlCommand("spDropdownlist", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader rdr = cmd.ExecuteReader();


                List<SelectListItem> lists = new List<SelectListItem>();
                NewItem itm = new NewItem();

                List<SelectListItem> sizelist = new List<SelectListItem>();
                List<SelectListItem> colorlist = new List<SelectListItem>();
                List<SelectListItem> categorylist = new List<SelectListItem>();
                List<SelectListItem> brandlist = new List<SelectListItem>();


                while (rdr.Read())
                {
                    sizelist.Add(new SelectListItem
                    {
                        Text = rdr["Size"].ToString(),
                        Value = rdr["Size_ID"].ToString()
                    });
                }

                rdr.NextResult();

                while (rdr.Read())
                {
                    colorlist.Add(new SelectListItem
                    {
                        Text = rdr["Color"].ToString(),
                        Value = rdr["Color_ID"].ToString()
                    });
                }


                rdr.NextResult();

                while (rdr.Read())
                {
                    categorylist.Add(new SelectListItem
                    {
                        Text = rdr["Category"].ToString(),
                        Value = rdr["Category_ID"].ToString()
                    });
                }


                rdr.NextResult();

                while (rdr.Read())
                {
                    brandlist.Add(new SelectListItem
                    {
                        Text = rdr["Brand"].ToString(),
                        Value = rdr["Brand_ID"].ToString()
                    });
                }


                con.Close();
                var tuple = new Tuple<List<SelectListItem>, List<SelectListItem>, List<SelectListItem>, List<SelectListItem>>(sizelist, colorlist, categorylist, brandlist);
                return tuple;
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }

    }

}
