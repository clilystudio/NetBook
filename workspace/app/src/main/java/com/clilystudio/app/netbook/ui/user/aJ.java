package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aJ
        implements View.OnClickListener {
    aJ(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserFollowWeixinActivity.class);
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aJ
 * JD-Core Version:    0.6.2
 */