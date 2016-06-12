
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.view.View;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class aW extends com.clilystudio.netbook.a.e {

    aW(BookTagListActivity BookTagListActivity1, byte byte2)
    {
        this( BookTagListActivity1 );
    }

    private BookTagListActivity a;

    private aW(BookTagListActivity BookTagListActivity1)
    {
        a = BookTagListActivity1;
    }

    private transient List a()
    {
        try
        {
            BookTagRoot BookTagRoot2 = com.clilystudio.netbook.api.b.b().c( BookTagListActivity.b( a ), BookTagListActivity.a( a ).size(), 50 );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;

        super.onPostExecute( Object2 );
        BookTagListActivity.c( a ).setVisibility( 8 );
        if( Object2 != null )
        {
            int int3;

            a.f();
            int3 = ((List) Object2).size();
            if( int3 > 0 )
            {
                BookTagListActivity.a( a ).addAll( (Collection) Object2 );
                BookTagListActivity.d( a ).a( (Collection) BookTagListActivity.a( a ) );
                if( int3 >= 50 )
                {
                    BookTagListActivity.e( a ).setOnLastItemListener( BookTagListActivity.f( a ) );
                    return;
                }
            }
            BookTagListActivity.e( a ).setOnLastItemListener( null );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
    }
}
