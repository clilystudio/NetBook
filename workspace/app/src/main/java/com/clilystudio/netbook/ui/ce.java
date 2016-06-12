package com.clilystudio.netbook.ui;

import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.umeng.a.b;

final class ce implements View$OnClickListener {

    private ShareRemoveAdActivity a;

    ce(ShareRemoveAdActivity ShareRemoveAdActivity1) {
        a = ShareRemoveAdActivity1;
    }

    public final void onClick(View View1) {
        String String2;

        if (am.e() == null)
            a.startActivity(AuthLoginActivity.a((Context) a));
        else
            ShareRemoveAdActivity.a(a);
        String2 = a.getIntent().getStringExtra("entrance_type");
        b.a((Context) a, "share_remove_btn_click", String2);
    }
}
