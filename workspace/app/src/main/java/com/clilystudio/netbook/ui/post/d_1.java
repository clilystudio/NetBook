package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;

final class d
        implements View.OnClickListener {
    private /* synthetic */ TextView a;
    private /* synthetic */ AbsPostActivity b;

    d(AbsPostActivity absPostActivity, TextView textView) {
        this.b = absPostActivity;
        this.a = textView;
    }

    @Override
    public final void onClick(View view) {
        Account account = am.a(this.b);
        if (account != null && AbsPostActivity.b(this.b)) {
            this.b.e = null;
            String string = this.a.getText().toString();
            AbsPostActivity.a(this.b, string);
            this.b.a(account, string);
        }
    }
}
