package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class aj implements View$OnClickListener {

    private boolean a;
    private String b;
    private BookCategoryActivity c;
    aj(BookCategoryActivity BookCategoryActivity1, boolean boolean2, String String3) {
        c = BookCategoryActivity1;
        a = boolean2;
        b = String3;
    }

    public final void onClick(View View1) {
        String String2;

        c.startActivity(BookCategoryListActivity.a((Context) c, a, b));
        if (a)
            String2 = "\u7537\u751F - ";
        else
            String2 = "\u5973\u751F - ";
        com.clilystudio.netbook.hpay100.a.a.p((Context) c, new StringBuilder().append(String2).append(b).toString());
    }
}
