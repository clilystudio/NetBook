package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

import com.clilystudio.netbook.util.e;

final class aM
        implements View.OnClickListener {
    private /* synthetic */ UserTaskActivity a;

    aM(UserTaskActivity userTaskActivity) {
        this.a = userTaskActivity;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details?id=" + this.a.getPackageName()));
        try {
            this.a.startActivityForResult(intent, 2);
            return;
        } catch (ActivityNotFoundException var4_3) {
            e.a((Activity) this.a, (String) "\u6253\u5f00\u5e94\u7528\u5e02\u573a\u5931\u8d25");
            return;
        }
    }
}
