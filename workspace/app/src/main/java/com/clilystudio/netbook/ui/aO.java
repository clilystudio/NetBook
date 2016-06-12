
package com.clilystudio.netbook.ui;

import android.app.Activity;
import com.clilystudio.netbook.adapter.BookRankAdapter;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookRankRoot;
import java.io.IOException;

final class aO extends com.clilystudio.netbook.a.e {

    aO(BookRankListActivity BookRankListActivity1, byte byte2)
    {
        this( BookRankListActivity1 );
    }

    private BookRankListActivity a;

    private aO(BookRankListActivity BookRankListActivity1)
    {
        a = BookRankListActivity1;
    }

    private transient BookRankRoot a()
    {
        BookRankRoot BookRankRoot2;

        try
        {
            BookRankRoot2 = com.clilystudio.netbook.api.b.b().d();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return BookRankRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (BookRankRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((BookRankRoot) Object2).isOk() )
        {
            BookRankListActivity.a( a, 1 );
            BookRankListActivity.c( a ).a( (BookRankRoot) Object2 );
        }
        else
        {
            BookRankListActivity.a( a, 2 );
            com.clilystudio.netbook.util.e.a( (Activity) a, 2131034408 );
        }
    }
}
