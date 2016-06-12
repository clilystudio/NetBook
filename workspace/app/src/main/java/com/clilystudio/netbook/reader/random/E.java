
package com.clilystudio.netbook.reader.random;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.reader.o;

final class E extends BroadcastReceiver {

    E(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void onReceive(Context Context1, Intent Intent2)
    {
        int int3 = 0;
        int int4 = Intent2.getIntExtra( "level", 0 );
        int int5 = Intent2.getIntExtra( "scale", 100 );
        int int6 = int4 * 100 / int5;

        if( ReaderRandomActivity.x( a ) != int6 )
        {
            o[] o_1darray8;
            int int9;

            ReaderRandomActivity.d( a, int6 );
            o_1darray8 = ReaderRandomActivity.i( a );
            int9 = o_1darray8.length;
            while( int3 < int9 )
            {
                o_1darray8[int3].a( int6 );
                ++int3;
            }
        }
    }
}
