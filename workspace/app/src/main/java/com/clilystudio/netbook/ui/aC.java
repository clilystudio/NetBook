package com.clilystudio.netbook.ui;

import android.view.View$OnClickListener;
import android.widget.TextView;

final class aC implements Runnable {

    TextView a;     // final access specifier removed
    BookInfoActivity b;     // final access specifier removed
    aC(BookInfoActivity BookInfoActivity1, TextView TextView2) {
        b = BookInfoActivity1;
        a = TextView2;
    }

    public final void run() {
        if (a.getLineCount() > 4) {
            a.setMaxLines(4);
            a.setOnClickListener((View$OnClickListener) new aD(this));
        }
    }
}
