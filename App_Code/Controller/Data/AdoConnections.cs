using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for AdoConnections
/// </summary>
public class AdoConnections
{
   
	public AdoConnections()
	{
		
	}

    public SqlConnection AbreConneccion()
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["mindSDB"].ConnectionString);
        try
        {
            cnn.Open();
        }
        catch (Exception ex)
        {
            getException(ex);
        }
        return cnn;
    }

    public void CierraConeccion(SqlConnection con)
    {
        try
        {
            con.Close();
        }
        catch(Exception ex)
        {
            getException(ex);
        }
    }

    public void getException(Exception e)
    {
        var msg = e.Message;
    }
}