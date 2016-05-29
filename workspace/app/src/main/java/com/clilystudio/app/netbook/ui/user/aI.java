package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.ui.SettingsActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aI
 * JD-Core Version:    0.6.2
 */