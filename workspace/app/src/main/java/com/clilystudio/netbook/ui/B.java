package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class B implements View$OnClickListener {

    private A a;

    B(A A1) {
        a = A1;
    }

    public final void onClick(View View1) {
        if (AudiobookInfoActivity.b(a.b)) {
            a.a.setMaxLines(4);
            AudiobookInfoActivity.a(a.b, false);
        } else {
            a.a.setMaxLines(2147483647);
            AudiobookInfoActivity.a(a.b, true);
        }
    }
}
