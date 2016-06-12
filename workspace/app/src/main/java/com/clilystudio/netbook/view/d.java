
package com.clilystudio.netbook.view;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.ui.cd;

final class d implements DialogInterface$OnClickListener {

    d(c c1)
    {
        a = c1;
    }

    private c a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        int int3 = 0;

        switch( int2 )
        {
            case 1201:
                int3 = 2;
                break;
            case 1199:
                int3 = 4;
                break;
            case 1200:
            default:
                break;
        }
        if( c.a( a ) != null )
            c.a( a ).a( int3 );
    }
}
