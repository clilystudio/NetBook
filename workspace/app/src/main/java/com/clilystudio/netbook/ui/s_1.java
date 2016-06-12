package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;

import com.clilystudio.netbook.umeng.a.b;

final class s implements DialogInterface$OnClickListener {

    private AudiobookCategoryActivity a;

    s(AudiobookCategoryActivity AudiobookCategoryActivity1) {
        a = AudiobookCategoryActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        Intent Intent3 = new Intent("android.intent.action.VIEW");

        Intent3.setData(Uri.parse("http://m.ximalaya.com/?from=alex-04"));
        a.startActivity(Intent3);
        b.a((Context) a, "ximalaya_url_click");
    }
}
