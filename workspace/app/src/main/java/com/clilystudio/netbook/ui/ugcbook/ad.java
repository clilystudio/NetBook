package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.user.UserUGCActivity;

final class ad
        implements View.OnClickListener {
    ad(UGCMainActivity paramUGCMainActivity) {
    }

    public final void onClick(View paramView) {
        if (am.a(this.a) != null) {
            b.a(this.a, "ugc_my_own");
            Intent localIntent = new Intent(this.a, UserUGCActivity.class);
            this.a.startActivity(localIntent);
            UGCMainActivity.h(this.a);
        }
    }
}

