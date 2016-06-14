package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.c;

import java.io.File;

final class k implements DialogInterface.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ LocalChapterListActivity b;

    k(LocalChapterListActivity localChapterListActivity, String string) {
        this.b = localChapterListActivity;
        this.a = string;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        String string = LocalChapterListActivity.c(this.b);
        String string2 = this.a;
        a.E(c.b + File.separator + string + File.separator + string2);
        LocalChapterListActivity.e(this.b);
    }
}
