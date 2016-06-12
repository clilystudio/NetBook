package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.y;

final class by implements DialogInterface$OnClickListener {

    private String a;
    private String b;
    private ReaderMenuFragment$DownLoadDialogFragment c;
    by(ReaderMenuFragment$DownLoadDialogFragment DownLoadDialogFragment1, String String2, String String3) {
        c = DownLoadDialogFragment1;
        a = String2;
        b = String3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        AppItem AppItem3;

        DialogInterface1.dismiss();
        ReaderMenuFragment$DownLoadDialogFragment.a(c).buildDrawingCache();
        AppItem3 = new AppItem();
        AppItem3.setName(a);
        AppItem3.setDownload_link(b);
        new y((Context) c.getActivity(), AppItem3).a();
        com.umeng.a.b.a((Context) c.getActivity(), "app_recommend_click", a);
    }
}
