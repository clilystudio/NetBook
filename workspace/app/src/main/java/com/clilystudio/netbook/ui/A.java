package com.clilystudio.netbook.ui;

import android.view.View;
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
            this.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (AudiobookInfoActivity.b(A.this.b)) {
                        A.this.a.setMaxLines(4);
                        AudiobookInfoActivity.a(A.this.b, false);
                        return;
                    }
                    A.this.a.setMaxLines(Integer.MAX_VALUE);
                    AudiobookInfoActivity.a(A.this.b, true);
                }
            });
        }
    }
}
