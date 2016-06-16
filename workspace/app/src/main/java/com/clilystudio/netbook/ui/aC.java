package com.clilystudio.netbook.ui;

import android.view.View;
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
            this.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (BookInfoActivity.c(aC.this.b)) {
                        aC.this.a.setMaxLines(4);
                        BookInfoActivity.b(aC.this.b, false);
                        return;
                    }
                    aC.this.a.setMaxLines(Integer.MAX_VALUE);
                    BookInfoActivity.b(aC.this.b, true);
                }
            });
        }
    }
}
