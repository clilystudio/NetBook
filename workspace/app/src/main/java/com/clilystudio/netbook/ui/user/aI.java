package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.SettingsActivity;

final class aI
        implements View.OnClickListener {
    aI(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, SettingsActivity.class);
        localIntent.putExtra("from_user_info", true);
        this.a.startActivity(localIntent);
    }
}

