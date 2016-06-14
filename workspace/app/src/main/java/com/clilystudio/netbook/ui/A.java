package com.clilystudio.netbook.ui;

import android.widget.TextView;

final class A implements Runnable {
    final /* synthetic */ TextView a;
    final /* synthetic */ AudiobookInfoActivity b;

    A(AudiobookInfoActivity audiobookInfoActivity, TextView textView) {
        this.b = audiobookInfoActivity;
        this.a = textView;
    }

    @Override
    public final void run() {
        if (this.a.getLineCount() > 4) {
            this.a.setMaxLines(4);
            this.a.setOnClickListener(new B(this));
        }
    }
}
