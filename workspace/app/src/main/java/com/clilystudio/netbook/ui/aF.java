package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aF implements View$OnClickListener {

    private String a;
    private BookInfoActivity b;
    aF(BookInfoActivity BookInfoActivity1, String String2) {
        b = BookInfoActivity1;
        a = String2;
    }

    public final void onClick(View View1) {
        BookInfoActivity.a(b, a);
    }
}
