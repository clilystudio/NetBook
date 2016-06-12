package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aD implements View$OnClickListener {

    private aC a;

    aD(aC aC1) {
        a = aC1;
    }

    public final void onClick(View View1) {
        if (BookInfoActivity.c(a.b)) {
            a.a.setMaxLines(4);
            BookInfoActivity.b(a.b, false);
        } else {
            a.a.setMaxLines(2147483647);
            BookInfoActivity.b(a.b, true);
        }
    }
}
