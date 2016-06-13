package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

final class s
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AudiobookCategoryActivity a;

    s(AudiobookCategoryActivity audiobookCategoryActivity) {
        this.a = audiobookCategoryActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://m.ximalaya.com/?from=alex-04"));
        this.a.startActivity(intent);
        b.a(this.a, "ximalaya_url_click");
    }
}
