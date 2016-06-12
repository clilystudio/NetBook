
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class bO implements CompoundButton$OnCheckedChangeListener {

    bO(ReaderOptionActivity ReaderOptionActivity1)
    {
        a = ReaderOptionActivity1;
    }

    private ReaderOptionActivity a;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "key_enable_imersive_mode", boolean2 );
        com.clilystudio.netbook.umeng.a.b.a( (Context) a, "imersive_switcher" );
    }
}
