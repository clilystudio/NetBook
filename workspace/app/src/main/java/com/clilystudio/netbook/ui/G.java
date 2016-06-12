
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.model.BookSummary;

final class G implements AdapterView$OnItemClickListener {

    G(AuthorBooksActivity AuthorBooksActivity1)
    {
        a = AuthorBooksActivity1;
    }

    private AuthorBooksActivity a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - AuthorBooksActivity.a( a ).getHeaderViewsCount();

        if( int6 >= 0 && int6 < AuthorBooksActivity.b( a ).getCount() )
        {
            BookSummary BookSummary7 = (BookSummary) AuthorBooksActivity.b( a ).getItem( int6 );

            if( BookSummary7 != null )
                a.startActivity( BookInfoActivity.a( (Context) a, BookSummary7.getId() ) );
        }
    }
}
