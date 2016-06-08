package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.MyApplication;

final class O
        implements View.OnClickListener {
    O(ReadModeItem paramReadModeItem, int paramInt1, int paramInt2) {
    }

    public final void onClick(View paramView) {
        if (this.a != this.b) {
            MyApplication.a().c(ReadModeItem.a(this.c));
            am.c(ReadModeItem.a(this.c), this.b);
            ReadModeItem.a(this.c, this.b);
        }
        ReadModeItem.b(this.c).finish();
    }
}

