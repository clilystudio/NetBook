
package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import com.clilystudio.netbook.model.BookSummary;
import java.util.List;

final class aT implements AdapterView$OnItemClickListener {

    aT(BookTagListActivity BookTagListActivity1)
    {
        a = BookTagListActivity1;
    }

    private BookTagListActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        if( int3 >= 0 && int3 < BookTagListActivity.a( a ).size() )
        {
            BookSummary BookSummary6 = (BookSummary) BookTagListActivity.a( a ).get( int3 );

            BookTagListActivity.a( a, BookSummary6 );
        }
    }
}
