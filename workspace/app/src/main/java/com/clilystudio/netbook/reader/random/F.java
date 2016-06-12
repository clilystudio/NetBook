
package com.clilystudio.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.reader.o;

final class F extends BroadcastReceiver {

    F(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        o[] o_1darray3 = ReaderRandomActivity.i( a );
        int int4 = o_1darray3.length;
        int int5;

        for( int5 = 0; int5 < int4; ++int5 )
            o_1darray3[int5].k();
    }
}
