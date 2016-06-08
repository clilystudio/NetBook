package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class k
        implements View.OnClickListener {
    k(AddBookHelpActivity paramAddBookHelpActivity, Dialog paramDialog, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        String str1 = AddBookHelpActivity.c(this.c).getText().toString().trim();
        String str2 = AddBookHelpActivity.d(this.c).getText().toString().trim();
        n localn = new n(this.c, this.c, 2131034430);
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.b;
        arrayOfString[1] = str1;
        arrayOfString[2] = str2;
        localn.b(arrayOfString);
    }
}

