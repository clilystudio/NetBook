
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.support.design.widget.am;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import java.io.IOException;

final class r extends e {

    r(UGCDetailActivity UGCDetailActivity1, byte byte2)
    {
        this( UGCDetailActivity1 );
    }

    private UGCDetailActivity a;

    private r(UGCDetailActivity UGCDetailActivity1)
    {
        a = UGCDetailActivity1;
    }

    private transient UGCBookDetailRoot a(String[] String_1darray1)
    {
        UGCBookDetailRoot UGCBookDetailRoot3;

label_18:
        {
            try
            {
                Account Account4;

                if( !com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity.k( a ) )
                    break label_18;
                Account4 = am.a( (Activity) a );
            }
            catch( IOException IOException2 )
            {
                IOException2.printStackTrace();
            }
            return null;
        }
        UGCBookDetailRoot3 = com.clilystudio.netbook.api.b.b().U( String_1darray1[0] );
        return UGCBookDetailRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (UGCBookDetailRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((UGCBookDetailRoot) Object2).isOk() && ((UGCBookDetailRoot) Object2).getBookList() != null )
        {
            UGCBookDetail UGCBookDetail3 = ((UGCBookDetailRoot) Object2).getBookList();

            UGCDetailActivity.a( a, UGCBookDetail3 );
            UGCDetailActivity.a( a, UGCBookDetail3.getAuthor() );
            UGCDetailActivity.b( a, UGCBookDetail3 );
        }
        else
            UGCDetailActivity.a( a, 2 );
    }
}
