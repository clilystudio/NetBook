package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

import com.clilystudio.netbook.util.I;

final class bN implements CompoundButton$OnCheckedChangeListener {

    private SwitchCompat a;
    private ReaderOptionActivity b;
    bN(ReaderOptionActivity ReaderOptionActivity1, SwitchCompat SwitchCompat2) {
        b = ReaderOptionActivity1;
        a = SwitchCompat2;
    }

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2) {
        com.clilystudio.netbook.hpay100.a.a.b((Context) b, new StringBuilder("auto_buy_chapter").append(I.a).toString(), boolean2);
        ReaderOptionActivity.a(b, (View) a, boolean2);
    }
}
