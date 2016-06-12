
package com.clilystudio.netbook.download;

import android.os.Handler;
import android.os.Message;

final class b extends Handler {

    b(a a1)
    {
        a = a1;
    }

    private a a;

    public final void handleMessage(Message Message1)
    {
        switch( Message1.what )
        {
            case 1:
                a.a( a, 1 + a.a( a ) );
                if( a.a( a ) == 3 )
                {
                    a.b( a );
                    return;
                }
                break;
            case 2:
                a.a( a, 2 + a.a( a ) );
                if( a.a( a ) == 3 )
                {
                    a.b( a );
                    return;
                }
                break;
            default:
                break;
        }
    }
}
