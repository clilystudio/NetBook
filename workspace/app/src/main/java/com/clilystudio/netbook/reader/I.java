
package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class I extends c {

    public I(o o1, Activity Activity2, String String3)
    {
        super( Activity2, String3 );
        a = o1;
    }

    private o a;

    private static transient PurchaseChapterResult a(String[] String_1darray1)
    {
        PurchaseChapterResult PurchaseChapterResult4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            PurchaseChapterResult4 = com.clilystudio.netbook.api.b.b().a( String_1darray1[0], String_1darray1[1], 0 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PurchaseChapterResult4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final volatile void a(Object Object1)
    {
        PurchaseChapterResult PurchaseChapterResult2 = (PurchaseChapterResult) Object1;

        o.a( a, true );
        o.a( a, PurchaseChapterResult2, false );
    }
}
