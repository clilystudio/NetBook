
package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.clilystudio.netbook.adapter.E;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import java.util.Collection;
import java.util.List;
import java.util.Map;

class bR extends com.clilystudio.netbook.a.e {

    bR(SearchActivity SearchActivity1, byte byte2)
    {
        this( SearchActivity1 );
    }

    final SearchActivity a = null;

    private bR(SearchActivity SearchActivity1)
    {
        a = SearchActivity1;
    }

    private transient List a(String[] String_1darray1)
    {
label_29:
        {
            List List3;

            try
            {
                SearchPromRoot SearchPromRoot6;

                if( SearchActivity.i( a ) != 1 )
                    break label_29;
                List3 = com.clilystudio.netbook.api.b.b().n( String_1darray1[0] );
                SearchPromRoot6 = com.clilystudio.netbook.api.b.b().q( String_1darray1[0] );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
            }
            List3 = null;
            return List3;
        }
        try
        {
            SearchResultRoot SearchResultRoot4 = com.clilystudio.netbook.api.b.b().p( String_1darray1[0] );
        }
        catch( Exception Exception7 )
        {
            Exception7.printStackTrace();
        }
    }

    protected void a(List List1)
    {
        super.onPostExecute( List1 );
        SearchActivity.a( a, true );
        if( List1 != null )
        {
            String String3;
            Object Object4;
            String String5;
            Map Map6;

            SearchActivity.b( a ).a( (Collection) List1 );
            new Handler().post( (Runnable) new bS( this ) );
            if( List1.size() > 0 )
            {
                SearchActivity.a( a, 1 );
                String3 = "1";
            }
            else
            {
                SearchActivity.a( a, 3 );
                String3 = "0";
            }
            Object4 = a;
            String5 = SearchActivity.j( a );
            Map6 = com.clilystudio.netbook.hpay100.a.a.p( (Context) a );
            Map6.put( "emp", String3 );
            com.a.a.a.c( (Context) Object4, String5, Map6 );
        }
        else
        {
            SearchActivity.a( a, 2 );
            com.clilystudio.netbook.util.e.a( (Activity) a, 2131034478 );
        }
    }

    protected Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected void onPostExecute(Object Object1)
    {
        a( (List) Object1 );
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        SearchActivity.a( a, false );
    }
}
