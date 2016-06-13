package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.view.View;

final class k
        implements View.OnClickListener {
    private /* synthetic */ Dialog a;
    private /* synthetic */ String b;
    private /* synthetic */ AddBookHelpActivity c;

    k(AddBookHelpActivity addBookHelpActivity, Dialog dialog, String string) {
        this.c = addBookHelpActivity;
        this.a = dialog;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        String string = AddBookHelpActivity.c(this.c).getText().toString().trim();
        String string2 = AddBookHelpActivity.d(this.c).getText().toString().trim();
        n n2 = new n(this.c, this.c, 2131034430);
        String[] arrstring = new String[]{this.b, string, string2};
        n2.b(arrstring);
    }
}
