
package com.clilystudio.netbook.reader;

import android.os.Handler;
import java.util.List;
import java.util.Map;

final class V extends Z {

    V(U U1, int int2, int int3)
    {
        super( U1.a, int2 );
        b = U1;
        a = int3;
    }

    private int a;
    private U b;

    public final void a(ReaderChapter ReaderChapter1)
    {
        List List2 = (List) U.a( b ).remove( Integer.valueOf( a ) );
        Integer Integer3;

        if( List2 != null )
            Reader.d( b.a ).post( (Runnable) new W( this, List2, ReaderChapter1 ) );
        Integer3 = (Integer) U.b( b ).remove( Integer.valueOf( a ) );
        if( Integer3 != null )
        {
            while( Integer3.intValue() != 0 )
            {
                Reader.a( b.a, 1, Reader$Type.CHAPTER );
                Integer3 = Integer.valueOf( -1 + Integer3.intValue() );
            }
        }
    }
}
