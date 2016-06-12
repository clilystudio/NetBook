
package com.clilystudio.netbook.reader.txt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.reader.o;

final class F extends BroadcastReceiver {

    F(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        int int3 = 0;
        int int4 = Intent2.getIntExtra( "level", 0 );
        int int5 = Intent2.getIntExtra( "scale", 100 );
        int int6 = int4 * 100 / int5;

        if( ReaderTxtActivity.N( a ) != int6 )
        {
            o[] o_1darray8;
            int int9;

            ReaderTxtActivity.g( a, int6 );
            o_1darray8 = ReaderTxtActivity.d( a );
            int9 = o_1darray8.length;
            while( int3 < int9 )
            {
                o_1darray8[int3].a( int6 );
                ++int3;
            }
        }
    }
}
