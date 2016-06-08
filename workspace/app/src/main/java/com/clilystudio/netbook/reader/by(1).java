package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.y;
import com.umeng.a.b;

final class by
        implements DialogInterface.OnClickListener {
    by(ReaderMenuFragment.DownLoadDialogFragment paramDownLoadDialogFragment, String paramString1, String paramString2) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ReaderMenuFragment.DownLoadDialogFragment.a(this.c).buildDrawingCache();
        AppItem localAppItem = new AppItem();
        localAppItem.setName(this.a);
        localAppItem.setDownload_link(this.b);
        new y(this.c.getActivity(), localAppItem).a();
        b.a(this.c.getActivity(), "app_recommend_click", this.a);
    }
}

