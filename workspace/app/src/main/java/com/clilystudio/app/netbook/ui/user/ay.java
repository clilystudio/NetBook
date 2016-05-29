package com.clilystudio.app.netbook.ui.user;

import android.content.DialogInterface;
import android.content.Intent;

import com.clilystudio.app.netbook.pay.weixin.a;
import com.clilystudio.app.netbook.util.e;

final class ay
        implements DialogInterface.OnClickListener {
    ay(UserFollowWeixinActivity paramUserFollowWeixinActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        if (!a.a(this.a)) {
            e.a(this.a, 2131034303);
            return;
        }
        Intent localIntent = this.a.getPackageManager().getLaunchIntentForPackage("com.tencent.mm");
        this.a.startActivity(localIntent);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ay
 * JD-Core Version:    0.6.2
 */