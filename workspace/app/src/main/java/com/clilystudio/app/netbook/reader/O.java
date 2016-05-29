package com.clilystudio.app.netbook.reader;

import android.view.View;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.util.am_CommonUtils;

final class O
        implements View.OnClickListener {
    O(ReadModeItem paramReadModeItem, int paramInt1, int paramInt2) {
    }

    public final void onClick(View paramView) {
        if (this.a != this.b) {
            MyApplication.a_getInstance().c(ReadModeItem.a(this.c));
            am_CommonUtils.c_setReadMode(ReadModeItem.a(this.c), this.b);
            ReadModeItem.a(this.c, this.b);
        }
        ReadModeItem.b(this.c).finish();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.O
 * JD-Core Version:    0.6.2
 */