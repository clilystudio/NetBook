
package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import com.clilystudio.netbook.db.BookReadRecord;
import java.util.ArrayList;

final class b implements AdapterView$OnItemClickListener {

    b(FeedAddActivity FeedAddActivity1)
    {
        a = FeedAddActivity1;
    }

    private FeedAddActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        BookReadRecord BookReadRecord6 = (BookReadRecord) FeedAddActivity.b( a ).getItem( int3 );

        if( FeedAddActivity.c( a ).contains( BookReadRecord6 ) )
            FeedAddActivity.c( a ).remove( BookReadRecord6 );
        else
            FeedAddActivity.c( a ).add( BookReadRecord6 );
        FeedAddActivity.b( a ).notifyDataSetChanged();
    }
}
