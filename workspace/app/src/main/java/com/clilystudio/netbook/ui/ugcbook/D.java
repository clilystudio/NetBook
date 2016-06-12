package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class D implements DialogInterface$OnClickListener {

    private UGCGuideAddCollectionActivity a;

    D(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        a = UGCGuideAddCollectionActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        a.finish();
    }
}
