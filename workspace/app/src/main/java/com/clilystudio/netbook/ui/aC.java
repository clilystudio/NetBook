package com.clilystudio.netbook.ui;

import android.widget.TextView;

final class aC implements Runnable {
    final /* synthetic */ TextView a;
    final /* synthetic */ BookInfoActivity b;

    aC(BookInfoActivity bookInfoActivity, TextView textView) {
        this.b = bookInfoActivity;
        this.a = textView;
    }

    @Override
    public final void run() {
        if (this.a.getLineCount() > 4) {
            this.a.setMaxLines(4);
            this.a.setOnClickListener(new aD(this));
        }
    }
}
