package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.widget.CompoundButton;

final class bJ
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ SwitchCompat a;
    private /* synthetic */ ReaderOptionActivity b;

    bJ(ReaderOptionActivity readerOptionActivity, SwitchCompat switchCompat) {
        this.b = readerOptionActivity;
        this.a = switchCompat;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.b, "click_flip_animation", bl);
        ReaderOptionActivity.a(this.b, this.a, bl);
    }
}
