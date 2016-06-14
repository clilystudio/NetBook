package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.y;

final class by implements DialogInterface.OnClickListener {
    private /* synthetic */ String a;
    private /* synthetic */ String b;
    private /* synthetic */ ReaderMenuFragment$DownLoadDialogFragment c;

    by(ReaderMenuFragment$DownLoadDialogFragment downLoadDialogFragment, String string, String string2) {
        this.c = downLoadDialogFragment;
        this.a = string;
        this.b = string2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        ReaderMenuFragment$DownLoadDialogFragment.a(this.c).buildDrawingCache();
        AppItem appItem = new AppItem();
        appItem.setName(this.a);
        appItem.setDownload_link(this.b);
        new y(this.c.getActivity(), appItem).a();
        b.a(this.c.getActivity(), "app_recommend_click", this.a);
    }
}
