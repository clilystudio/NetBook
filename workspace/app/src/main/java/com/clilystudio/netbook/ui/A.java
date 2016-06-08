package com.clilystudio.netbook.ui;

import android.widget.TextView;

final class A
        implements Runnable {
    A(AudiobookInfoActivity paramAudiobookInfoActivity, TextView paramTextView) {
    }

    public final void run() {
        if (this.a.getLineCount() > 4) {
            this.a.setMaxLines(4);
            this.a.setOnClickListener(new B(this));
        }
    }
}

