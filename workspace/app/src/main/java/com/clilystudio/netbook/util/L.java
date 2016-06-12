
package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.design.widget.am;
import com.squareup.a.b;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Root;

final class L extends S {

    L(J J1)
    {
        a = J1;
    }

    private J a;

    protected final Root a(ApiService ApiService1, String[] String_1darray2)
    {
        return ApiService1.L( String_1darray2[0] );
    }

    protected final void b(Root Root1)
    {
        a.a( 0 );
        i.a().c( new w() );
        am.j( J.a( a ) );
    }
}
