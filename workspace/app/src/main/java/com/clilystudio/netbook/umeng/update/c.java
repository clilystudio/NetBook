
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.K;

final class c extends Handler {

    c(Looper Looper1)
    {
        super( Looper1 );
    }

    public final void handleMessage(Message Message1)
    {
        super.handleMessage( Message1 );
        if( Message1.what == 0 && k.b() )
            b.a( b.a(), (UpdateResponse) Message1.obj, k.f() );
        b.b( null );
        if( b.b() != null )
            b.b();
    }
}
