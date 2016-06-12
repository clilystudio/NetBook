
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.j;

final class bL implements CompoundButton$OnCheckedChangeListener {

    bL(ReaderOptionActivity ReaderOptionActivity1, SwitchCompat SwitchCompat2)
    {
        b = ReaderOptionActivity1;
        a = SwitchCompat2;
    }

    private SwitchCompat a;
    private ReaderOptionActivity b;

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2)
    {
        com.clilystudio.netbook.hpay100.a.a.b( (Context) b, "convert_t", boolean2 );
        i.a().c( new j() );
        ReaderOptionActivity.a( b, (View) a, boolean2 );
    }
}
