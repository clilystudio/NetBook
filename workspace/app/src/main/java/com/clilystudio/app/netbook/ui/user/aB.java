package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.ui.ShareRemoveAdActivity;

final class aB
        implements View.OnClickListener {
    aB(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = ShareRemoveAdActivity.a(this.a, "userInfo");
        this.a.startActivity(localIntent);
        b.a(this.a, "share_remove_entrance_click", "userInfo");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aB
 * JD-Core Version:    0.6.2
 */