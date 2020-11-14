using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

namespace CICS.ControlLogic
{
    public class DatabaseHandler
    {
        private Database PegPayInterface;
        private DbCommand mycommand;

        public DatabaseHandler()
        {
            try
            {

                //PegPayInterface = DbLayer.CreateDatabase("LivePegPayConnectionString", DbLayer.DB2);
                PegPayInterface = DatabaseFactory.CreateDatabase("LiveConnectionString");

            }
            catch (Exception up)
            {
                throw up;
            }
        }

        public DataTable GetPendingPrepaidTransactions()
        {
            DataTable table = new DataTable();
            try
            {

                mycommand = PegPayInterface.GetStoredProcCommand("GetPendingPrepaidTransactions5");
                table = PegPayInterface.ExecuteDataSet(mycommand).Tables[0];
                return table;
            }
            catch (Exception e)
            {
                //do nothing, return an empty table instead
            }
            return table;

        }

    }
}