package com.clilystudio.netbook.reader.random;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class d implements View$OnClickListener {

    private ReaderRandomActivity a;

    d(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void onClick(View View1) {
        if (ReaderRandomActivity.a(a)) {
            ReaderRandomActivity.b(a);
            ReaderRandomActivity.a(a, false);
            ReaderRandomActivity.c(a).setText((CharSequence) "\u6DFB\u52A0\u5230\u4E66\u67B6");
            ReaderRandomActivity.d(a).setBackgroundResource(2130837685);
            ReaderRandomActivity.c(a).setCompoundDrawablesWithIntrinsicBounds(2130838129, 0, 0, 0);
        } else {
            ReaderRandomActivity.e(a);
            ReaderRandomActivity.a(a, true);
            ReaderRandomActivity.d(a).setBackgroundResource(2130837650);
            ReaderRandomActivity.c(a).setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
            ReaderRandomActivity.c(a).setText((CharSequence) "\u5DF2\u6DFB\u52A0");
            com.clilystudio.netbook.umeng.a.b.a((Context) a, "random_rader_add_shelf");
        }
    }
}
