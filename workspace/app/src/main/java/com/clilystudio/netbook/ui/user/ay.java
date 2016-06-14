package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

import com.clilystudio.netbook.util.e;

final class ay implements DialogInterface.OnClickListener {
    private /* synthetic */ UserFollowWeixinActivity a;

    ay(UserFollowWeixinActivity userFollowWeixinActivity) {
        this.a = userFollowWeixinActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        if (!a.a(this.a)) {
            e.a((Activity) this.a, (int) 2131034303);
            return;
        }
        Intent intent = this.a.getPackageManager().getLaunchIntentForPackage("com.tencent.mm");
        this.a.startActivity(intent);
    }
}
