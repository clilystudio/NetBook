package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.View$OnClickListener;

final class k implements View$OnClickListener {

    private Dialog a;
    private String b;
    private AddBookHelpActivity c;
    k(AddBookHelpActivity AddBookHelpActivity1, Dialog Dialog2, String String3) {
        c = AddBookHelpActivity1;
        a = Dialog2;
        b = String3;
    }

    public final void onClick(View View1) {
        String String2;
        String String3;
        n n4;
        String[] String_1darray5;

        a.dismiss();
        String2 = AddBookHelpActivity.c(c).getText().toString().trim();
        String3 = AddBookHelpActivity.d(c).getText().toString().trim();
        n4 = new n(c, (Activity) c, 2131034430);
        String_1darray5 = new String[3];
        String_1darray5[0] = b;
        String_1darray5[1] = String2;
        String_1darray5[2] = String3;
        n4.b(String_1darray5);
    }
}
