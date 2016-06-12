
package com.clilystudio.netbook.pay.weixin;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import com.e.a.a.g.c;
import com.clilystudio.netbook.model.ChargePlan;

public final class a {

    public a(Context Context1)
    {
        b = Context1;
        a = c.a( Context1, null );
    }

    com.e.a.a.g.a a;     // final access specifier removed
    private Context b;

    static Context a(a a1)
    {
        return a1.b;
    }

    public static boolean a(Context Context1)
    {
        com.e.a.a.g.a a2 = c.a( Context1, "" );

        if( a2.a() && a2.b() )
            return true;
        else
            return false;
    }

    public final void a(ChargePlan ChargePlan1)
    {
        new b( this, (Activity) b, "\u6B63\u5728\u53D1\u8D77\u5FAE\u4FE1\u652F\u4ED8" ).b( new ChargePlan[] { ChargePlan1 } );
    }
}
