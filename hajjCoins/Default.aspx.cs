using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hajjCoins
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [System.Web.Services.WebMethod]
        public static string GetDataReport1()
        {
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, string>> rows = new List<Dictionary<string, string>>();
            Dictionary<string, string> row;
            try
            {
                
                        row = new Dictionary<string, string>();
                        
                            row.Add("D", "120");
                row.Add("r", "88");
                rows.Add(row);
                   
                
            }
            catch (Exception ex)
            {
             }

            return serializer.Serialize(rows);

        }
    }
}