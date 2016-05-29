package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aG
        implements View.OnClickListener {
    aG(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserLevelActivity.class);
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aG
 * JD-Core Version:    0.6.2
 */