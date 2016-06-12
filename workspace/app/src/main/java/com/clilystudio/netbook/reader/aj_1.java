
package com.clilystudio.netbook.reader;

import android.content.Context;
import com.jeremyfeinstein.slidingmenu.lib.g;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.UmengGameTracer$From;

final class aj implements g {

    aj(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void a()
    {
        ReaderActivity.a( a );
        ReaderActivity.b( a );
        ReaderActivity.c( a );
        a.a( ReaderActivity.d( a ) );
        com.clilystudio.netbook.hpay100.a.a.q( (Context) a, "\u6253\u5F00\u9875\u5C3E" );
        if( ReaderActivity.e( a ) != null && ReaderActivity.e( a ).b() != null )
        {
            com.clilystudio.netbook.hpay100.a.a.q( (Context) a, new StringBuilder( "\u9875\u5C3E\u5E7F\u544A-" ).append( ReaderActivity.e( a ).b() ).toString() );
            new UmengGameTracer( (Context) a, UmengGameTracer$From.Reader ).a( ReaderActivity.e( a ).a() );
        }
    }
}
