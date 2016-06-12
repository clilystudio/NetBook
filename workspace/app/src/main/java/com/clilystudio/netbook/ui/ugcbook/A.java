
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.os.Handler;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.SearchPromRoot;
import java.util.Collection;
import java.util.List;

class A extends com.clilystudio.netbook.a.e {

    A(UGCGuideAddBookActivity UGCGuideAddBookActivity1, byte byte2)
    {
        this( UGCGuideAddBookActivity1 );
    }

    final UGCGuideAddBookActivity a = null;

    private A(UGCGuideAddBookActivity UGCGuideAddBookActivity1)
    {
        a = UGCGuideAddBookActivity1;
    }

    private transient List a(String[] String_1darray1)
    {
        List List3;
        SearchPromRoot SearchPromRoot4;

        try
        {
            List3 = com.clilystudio.netbook.api.b.b().n( String_1darray1[0] );
            SearchPromRoot4 = com.clilystudio.netbook.api.b.b().q( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        if( SearchPromRoot4 != null && SearchPromRoot4.getProm() != null )
            List3.add( 0, SearchPromRoot4.getProm() );
        return List3;
    }

    protected void a(List List1)
    {
        super.onPostExecute( List1 );
        UGCGuideAddBookActivity.c( a, true );
        if( List1 != null )
        {
            UGCGuideAddBookActivity.c( a ).a( (Collection) List1 );
            new Handler().post( (Runnable) new B( this ) );
            if( List1.size() > 0 )
                UGCGuideAddBookActivity.b( a, 1 );
            else
                UGCGuideAddBookActivity.b( a, 3 );
        }
        else
        {
            UGCGuideAddBookActivity.b( a, 2 );
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
        UGCGuideAddBookActivity.c( a, false );
    }
}
