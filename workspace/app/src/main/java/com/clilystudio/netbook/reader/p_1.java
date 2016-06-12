
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.support.design.widget.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.I;

final class p implements e {

    p(o o1)
    {
        a = o1;
    }

    private o a;

    public final void a(Object Object1)
    {
        ReaderChapter ReaderChapter2 = (ReaderChapter) Object1;

        if( ReaderChapter2 != null && a.a( ReaderChapter2 ) )
        {
            J J3;
            String[] String_1darray4;

            com.clilystudio.netbook.umeng.a.b.a( (Context) o.a( a ), "paying_page_auto_purchase", I.b );
            J3 = new J( a, ReaderChapter2 );
            String_1darray4 = new String[2];
            String_1darray4[0] = am.e().getToken();
            String_1darray4[1] = ReaderChapter2.getId();
            J3.b( String_1darray4 );
        }
    }
}
