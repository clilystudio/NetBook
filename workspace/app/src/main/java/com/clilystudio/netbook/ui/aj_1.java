package com.clilystudio.netbook.ui;

import android.view.View;

final class aj implements View.OnClickListener {
    private /* synthetic */ boolean a;
    private /* synthetic */ String b;
    private /* synthetic */ BookCategoryActivity c;

    aj(BookCategoryActivity bookCategoryActivity, boolean bl, String string) {
        this.c = bookCategoryActivity;
        this.a = bl;
        this.b = string;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        this.c.startActivity(BookCategoryListActivity.a(this.c, this.a, this.b));
        String string = this.a ? "\u7537\u751f - " : "\u5973\u751f - ";
        a.p(this.c, string + this.b);
    }
}
