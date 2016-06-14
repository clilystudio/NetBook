package com.clilystudio.netbook.ui.post;

import android.app.Dialog;
import android.text.TextUtils;
import android.view.View;

final class Y implements View.OnClickListener {
    private /* synthetic */ Dialog a;
    private /* synthetic */ AddVoteItemActivity b;

    Y(AddVoteItemActivity addVoteItemActivity, Dialog dialog) {
        this.b = addVoteItemActivity;
        this.a = dialog;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        String string = TextUtils.join((CharSequence) ",", AddVoteItemActivity.i(this.b).toArray());
        Z z = new Z(this.b, this.b, 2131034430);
        String[] arrstring = new String[]{AddVoteItemActivity.j(this.b).getToken(), AddVoteItemActivity.k(this.b), AddVoteItemActivity.l(this.b).trim(), AddVoteItemActivity.m(this.b).trim(), string};
        z.b(arrstring);
    }
}
