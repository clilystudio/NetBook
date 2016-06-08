package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;

final class d
        implements View.OnClickListener {
    d(AbsPostActivity paramAbsPostActivity, TextView paramTextView) {
    }

    public final void onClick(View paramView) {
        Account localAccount = am.a(this.b);
        if ((localAccount != null) && (AbsPostActivity.b(this.b))) {
            this.b.e = null;
            String str = this.a.getText().toString();
            AbsPostActivity.a(this.b, str);
            this.b.a(localAccount, str);
        }
    }
}

