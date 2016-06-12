
package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import com.clilystudio.netbook.model.ChargePlan;

public final class a {

    public a(Context Context1)
    {
        a = Context1;
    }

    private Context a;
    private Handler b = new b( this );

    static Context a(a a1)
    {
        return a1.a;
    }

    static Handler b(a a1)
    {
        return a1.b;
    }

    public final void a(ChargePlan ChargePlan1)
    {
        new c( this, (Activity) a ).b( new ChargePlan[] { ChargePlan1 } );
    }
}
