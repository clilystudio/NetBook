package com.clilystudio.netbook.reader;

import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.MyApplication;

final class O
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ int b;
    private /* synthetic */ ReadModeItem c;

    O(ReadModeItem readModeItem, int n, int n2) {
        this.c = readModeItem;
        this.a = n;
        this.b = n2;
    }

    @Override
    public final void onClick(View view) {
        if (this.a != this.b) {
            MyApplication.a().c(ReadModeItem.a(this.c));
            am.c((String) ReadModeItem.a(this.c), (int) this.b);
            ReadModeItem.a(this.c, this.b);
        }
        ReadModeItem.b(this.c).finish();
    }
}
