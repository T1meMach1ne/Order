using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    [Serializable]
    [TableMap("OrderItems", new string[] { "OrderItemID", })]
    public class OrderItems
    {
        public OrderItems()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private int mOrderItemID;
        [AutoIncrease()]
        [Column("OrderItemID", System.Data.DbType.Int32)]
        public int OrderItemID
        {
            get
            {
                return mOrderItemID;
            }
            set
            {
                mOrderItemID = value;
            }
        }
        private Books mBookID;

        [Column("BookID", System.Data.DbType.Int32, true)]
        [SubClass(ClassName = "BookShop.Model.Books", ForignKey = "BookId", TableName = "Books")]
        public Books BookID
        {
            get
            {
                return mBookID;
            }
            set
            {
                mBookID = value;
            }
        }
        private int mCount;

        [Column("Count", System.Data.DbType.Int32)]
        public int Count
        {
            get
            {
                return mCount;
            }
            set
            {
                mCount = value;
            }
        }
        private Decimal mTotalPrice;
        [Column("TotalPrice", System.Data.DbType.Decimal)]
        public Decimal TotalPrice
        {
            get
            {
                return mTotalPrice;
            }
            set
            {
                mTotalPrice = value;
            }
        }

        private Orders mOrderID;

        [Column("OrderID", System.Data.DbType.Int32, true)]
        [SubClass(ClassName = "BookShop.Model.Orders", ForignKey = "OrderID", TableName = "Orders")]
        public Orders OrderID
        {
            get { return mOrderID; }
            set { mOrderID = value; }
        }
    }
}
