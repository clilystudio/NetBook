package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import java.io.File;

final class k implements DialogInterface$OnClickListener {

    private String a;
    private LocalChapterListActivity b;
    k(LocalChapterListActivity LocalChapterListActivity1, String String2) {
        b = LocalChapterListActivity1;
        a = String2;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        String String3;
        String String4;

        DialogInterface1.dismiss();
        String3 = LocalChapterListActivity.c(b);
        String4 = a;
        com.clilystudio.netbook.hpay100.a.a.E(new StringBuilder().append(com.clilystudio.netbook.c.b).append(File.separator).append(String3).append(File.separator).append(String4).toString());
        LocalChapterListActivity.e(b);
    }
}
