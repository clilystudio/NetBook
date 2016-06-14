package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Intent;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.ui.user.UserUGCActivity;

final class ad implements View.OnClickListener {
    private /* synthetic */ UGCMainActivity a;

    ad(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final void onClick(View view) {
        if (am.a((Activity) this.a) != null) {
            b.a(this.a, "ugc_my_own");
            Intent intent = new Intent(this.a, UserUGCActivity.class);
            this.a.startActivity(intent);
            UGCMainActivity.h(this.a);
        }
    }
}
