using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class OrderInfo_Model
    {
        public string orderUserId
        {
            get;
            set;
        }
        public string orderTime
        {
            get;
            set;
        }
        public string orderContent
        {
            get;
            set;
        }
        public DateTime acceptTime
        {
            get;
            set;
        }
 
        public string expressUser
        {
            get;
            set;
        }
        public string expressTel
        {
            get;
            set;
        }
        public int storeID
        {
            get;
            set;
        }
        public string countPrice
        {
            get;
            set;
        }
    }
}
