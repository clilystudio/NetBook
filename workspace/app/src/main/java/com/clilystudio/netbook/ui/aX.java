
package com.clilystudio.netbook.ui;

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

final class aX extends com.clilystudio.netbook.a.e {

    aX(BookTagListActivity BookTagListActivity1, byte byte2)
    {
        this( BookTagListActivity1 );
    }

    private BookTagListActivity a;

    private aX(BookTagListActivity BookTagListActivity1)
    {
        a = BookTagListActivity1;
    }

    private transient List a()
    {
        try
        {
            BookTagRoot BookTagRoot2 = com.clilystudio.netbook.api.b.b().c( BookTagListActivity.b( a ), 0, 50 );
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
            int int3 = ((List) Object2).size();

            if( int3 > 0 )
            {
                a.f();
                BookTagListActivity.a( a ).clear();
                BookTagListActivity.a( a ).addAll( (Collection) Object2 );
                BookTagListActivity.d( a ).a( (Collection) BookTagListActivity.a( a ) );
                if( int3 < 50 )
                    BookTagListActivity.e( a ).setOnLastItemListener( null );
                else
                    BookTagListActivity.e( a ).setOnLastItemListener( BookTagListActivity.f( a ) );
            }
            else
                a.g();
        }
        else
            a.h();
    }
}
