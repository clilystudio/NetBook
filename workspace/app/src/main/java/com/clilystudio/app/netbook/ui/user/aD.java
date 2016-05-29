package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aD
        implements View.OnClickListener {
    aD(UserInfoActivity paramUserInfoActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent(this.a, UserUGCActivity.class);
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aD
 * JD-Core Version:    0.6.2
 */