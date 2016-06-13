package com.clilystudio.netbook.reader;

import android.content.Context;
import android.widget.CompoundButton;

final class bO
        implements CompoundButton.OnCheckedChangeListener {
    private /* synthetic */ ReaderOptionActivity a;

    bO(ReaderOptionActivity readerOptionActivity) {
        this.a = readerOptionActivity;
    }

    @Override
    public final void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
        a.b((Context) this.a, "key_enable_imersive_mode", bl);
        b.a(this.a, "imersive_switcher");
    }
}
