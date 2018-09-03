using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS_DataAccessLayer
{
    public class UserDetails
    {

        public bool ValidateUsers(string username, string password)
        {
            try
            {

                string constr = ConfigurationManager.ConnectionStrings["dbConnection"].ToString();
                SqlConnection con = new SqlConnection(constr);

                SqlCommand cmd = new SqlCommand("spValidateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parameterUsername = new SqlParameter("@UserName", username);
                SqlParameter parameterPassword = new SqlParameter("@Password", password);

                cmd.Parameters.Add(parameterUsername);
                cmd.Parameters.Add(parameterPassword);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }

            catch(Exception ex)
            {
                throw ex;
            }

        }

    }
    

}

