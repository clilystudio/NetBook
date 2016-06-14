package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

final class V implements View.OnClickListener {
    private /* synthetic */ EditText a;
    private /* synthetic */ TextView b;
    private /* synthetic */ int c;
    private /* synthetic */ Dialog d;
    private /* synthetic */ AddVoteItemActivity e;

    V(AddVoteItemActivity addVoteItemActivity, EditText editText, TextView textView, int n, Dialog dialog) {
        this.e = addVoteItemActivity;
        this.a = editText;
        this.b = textView;
        this.c = n;
        this.d = dialog;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        AddVoteItemActivity.a(this.e, this.a);
        String string = this.a.getText().toString();
        if (!a.Q(string)) {
            if (AddVoteItemActivity.a(this.e, string)) {
                e.a((Activity) this.e, (String) "\u8be5\u6295\u7968\u9879\u5df2\u7ecf\u5b58\u5728");
            } else {
                this.b.setText(string);
                AddVoteItemActivity.h((AddVoteItemActivity) this.e)[this.c] = string;
            }
        }
        this.d.dismiss();
    }
}
