package com.clilystudio.netbook.reader.random;

import android.view.View;

final class d
        implements View.OnClickListener {
    private /* synthetic */ ReaderRandomActivity a;

    d(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void onClick(View view) {
        if (ReaderRandomActivity.a(this.a)) {
            ReaderRandomActivity.b(this.a);
            ReaderRandomActivity.a(this.a, false);
            ReaderRandomActivity.c(this.a).setText("\u6dfb\u52a0\u5230\u4e66\u67b6");
            ReaderRandomActivity.d(this.a).setBackgroundResource(2130837685);
            ReaderRandomActivity.c(this.a).setCompoundDrawablesWithIntrinsicBounds(2130838129, 0, 0, 0);
            return;
        }
        ReaderRandomActivity.e(this.a);
        ReaderRandomActivity.a(this.a, true);
        ReaderRandomActivity.d(this.a).setBackgroundResource(2130837650);
        ReaderRandomActivity.c(this.a).setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
        ReaderRandomActivity.c(this.a).setText("\u5df2\u6dfb\u52a0");
        b.a(this.a, "random_rader_add_shelf");
    }
}