//------------------------------------------------------------------------------
// <auto-generated>
//     這個程式碼是由範本產生。
//
//     對這個檔案進行手動變更可能導致您的應用程式產生未預期的行為。
//     如果重新產生程式碼，將會覆寫對這個檔案的手動變更。
// </auto-generated>
//------------------------------------------------------------------------------

namespace foodfun.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        public string product_no { get; set; }
        public string product_name { get; set; }
        public string product_spec { get; set; }
        public string category_no { get; set; }
        public Nullable<int> price_avgcost { get; set; }
        public Nullable<int> price_sale { get; set; }
        public Nullable<int> discount_price { get; set; }
        public Nullable<int> stock_qty { get; set; }
        public string image_path { get; set; }
        public string description { get; set; }
        public Nullable<int> browse_count { get; set; }
        public Nullable<bool> istop { get; set; }
        public Nullable<bool> issale { get; set; }
        public Nullable<bool> ishot { get; set; }
        public string remark { get; set; }
    }
}
