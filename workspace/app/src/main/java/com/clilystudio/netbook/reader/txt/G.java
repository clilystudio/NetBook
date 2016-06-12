
package com.clilystudio.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.reader.o;

final class G extends BroadcastReceiver {

    G(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        o[] o_1darray3 = ReaderTxtActivity.d( a );
        int int4 = o_1darray3.length;
        int int5;

        for( int5 = 0; int5 < int4; ++int5 )
            o_1darray3[int5].k();
    }
}
