package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.ui.SettingsActivity;

final class aI implements View.OnClickListener {
    private /* synthetic */ UserInfoActivity a;

    aI(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent(this.a, SettingsActivity.class);
        intent.putExtra("from_user_info", true);
        this.a.startActivity(intent);
    }
}
