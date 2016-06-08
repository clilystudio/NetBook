package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

final class s
        implements DialogInterface.OnClickListener {
    s(AudiobookCategoryActivity paramAudiobookCategoryActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse("http://m.ximalaya.com/?from=alex-04"));
        this.a.startActivity(localIntent);
        b.a(this.a, "ximalaya_url_click");
    }
}

