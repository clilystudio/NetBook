package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aH
        implements View.OnClickListener {
    aH(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserTaskActivity.class);
        this.a.startActivity(localIntent);
    }
}

