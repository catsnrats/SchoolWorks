using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Tietovisa.Model
{
    internal class DatabaseControl
    {
        string connString;
        SqlConnection dbConn;

        public DatabaseControl()
        {
            connString = "Data source=(localdb)\\MSSQLLocalDB; Initial catalog=Tietovisa; Integrated Security=True;";
            dbConn = new SqlConnection(connString);
        }

        public bool ConnectDatabase()
        {
            try
            {
                dbConn.Open();
                return true;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "DB connection error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            finally
            {
                dbConn.Close();
            }
        }
    }
}
