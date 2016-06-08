package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aC
        implements View.OnClickListener {
    aC(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, MyMessageActivity.class);
        this.a.startActivity(localIntent);
    }
}

