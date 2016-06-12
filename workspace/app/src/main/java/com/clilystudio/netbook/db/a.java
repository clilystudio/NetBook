
package com.clilystudio.netbook.db;

final class a {

    static final int[] a = new int[BookSyncRecord$BookModifyType.values().length];

    static 
    {
exit_point:
        {
            try
            {
                a[BookSyncRecord$BookModifyType.SHELF_ADD.ordinal()] = 1;
            }
            catch( NoSuchFieldError NoSuchFieldError1 )
            {
            }
            try
            {
                a[BookSyncRecord$BookModifyType.SHELF_REMOVE.ordinal()] = 2;
            }
            catch( NoSuchFieldError NoSuchFieldError2 )
            {
            }
            try
            {
                a[BookSyncRecord$BookModifyType.FEED_ADD.ordinal()] = 3;
            }
            catch( NoSuchFieldError NoSuchFieldError3 )
            {
            }
            try
            {
                a[BookSyncRecord$BookModifyType.FEED_REMOVE.ordinal()] = 4;
            }
            catch( NoSuchFieldError NoSuchFieldError4 )
            {
            }
            try
            {
                a[BookSyncRecord$BookModifyType.SYNC_SUCCESS.ordinal()] = 5;
            }
            catch( NoSuchFieldError NoSuchFieldError5 )
            {
                break exit_point;
            }
            return;
        }
    }
}
