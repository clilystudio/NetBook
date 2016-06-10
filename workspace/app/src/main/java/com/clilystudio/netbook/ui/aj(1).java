package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class aj
        implements View.OnClickListener {
    aj(BookCategoryActivity paramBookCategoryActivity, boolean paramBoolean, String paramString) {
    }

    public final void onClick(View paramView) {
        this.c.startActivity(BookCategoryListActivity.a(this.c, this.a, this.b));
        if (this.a) ;
        for (String str = "男生 - "; ; str = "女生 - ") {
            a.p(this.c, str + this.b);
            return;
        }
    }
}

