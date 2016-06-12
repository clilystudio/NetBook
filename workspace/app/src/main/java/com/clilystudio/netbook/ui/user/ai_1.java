package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.ShareRemoveAdActivity;
import com.umeng.a.b;

final class ai implements View$OnClickListener {

    private RemoveAdActivity a;

    ai(RemoveAdActivity RemoveAdActivity1) {
        a = RemoveAdActivity1;
    }

    public final void onClick(View View1) {
        Intent Intent2 = ShareRemoveAdActivity.a((Context) a, "removeAd");

        a.startActivity(Intent2);
        b.a((Context) a, "share_remove_entrance_click", "removeAd");
    }
}
