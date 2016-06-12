
package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.Root;
import java.util.Date;

final class K extends S {

    K(J J1)
    {
        a = J1;
    }

    private J a;

    protected final Root a(ApiService ApiService1, String[] String_1darray2)
    {
        return (Root) ApiService1.G( String_1darray2[0] );
    }

    protected final void b(Root Root1)
    {
        NotifCountRoot NotifCountRoot2 = (NotifCountRoot) Root1;
        Date Date5;
        Date Date6;

        J.a( a, NotifCountRoot2.getImportant() );
        J.b( a, NotifCountRoot2.getUnimportant() );
        Date5 = NotifCountRoot2.getLastReadImportantTime();
        Date6 = NotifCountRoot2.getLastReadUnimportantTime();
        if( am.h( J.a( a ) ).equals( "0" ) )
            am.a( J.a( a ), Date5.getTime() );
        if( am.i( J.a( a ) ).equals( "0" ) )
            am.b( J.a( a ), Date6.getTime() );
        com.clilystudio.netbook.event.i.a().c( new w() );
    }
}
