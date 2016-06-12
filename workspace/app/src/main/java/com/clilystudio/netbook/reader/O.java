
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.MyApplication;

final class O implements View$OnClickListener {

    O(ReadModeItem ReadModeItem1, int int2, int int3)
    {
        c = ReadModeItem1;
        a = int2;
        b = int3;
    }

    private int a;
    private int b;
    private ReadModeItem c;

    public final void onClick(View View1)
    {
        if( a != b )
        {
            MyApplication.a().c( ReadModeItem.a( c ) );
            am.c( ReadModeItem.a( c ), b );
            ReadModeItem.a( c, b );
        }
        ReadModeItem.b( c ).finish();
    }
}
