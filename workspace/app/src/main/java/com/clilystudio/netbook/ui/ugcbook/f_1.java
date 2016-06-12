
package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import java.util.Comparator;
import java.util.Date;

final class f implements Comparator {

    f(DraftUGCListFragment DraftUGCListFragment1)
    {
    }

    public final int compare(Object Object1, Object Object2)
    {
        UGCBookListRoot$UGCBook UGCBook3 = (UGCBookListRoot$UGCBook) Object1;
        UGCBookListRoot$UGCBook UGCBook4 = (UGCBookListRoot$UGCBook) Object2;

        if( UGCBook3.getUpdated().before( UGCBook4.getUpdated() ) )
            return 1;
        else
            return -1;
    }
}
