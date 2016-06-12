
package com.clilystudio.netbook.reader;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bj extends BroadcastReceiver {

    bj(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        o[] o_1darray3 = ReaderActivity.i( a );
        int int4 = o_1darray3.length;
        int int5;

        for( int5 = 0; int5 < int4; ++int5 )
            o_1darray3[int5].k();
    }
}
