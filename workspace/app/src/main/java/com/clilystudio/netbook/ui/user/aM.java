package com.clilystudio.netbook.ui.user;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

import com.clilystudio.netbook.util.e;

final class aM
        implements View.OnClickListener {
    aM(UserTaskActivity paramUserTaskActivity) {
    }

    public final void onClick(View paramView) {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse("market://details?id=" + this.a.getPackageName()));
        try {
            this.a.startActivityForResult(localIntent, 2);
            return;
        } catch (ActivityNotFoundException localActivityNotFoundException) {
            e.a(this.a, "打开应用市场失败");
        }
    }
}

