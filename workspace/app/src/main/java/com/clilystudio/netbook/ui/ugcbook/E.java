package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class E implements DialogInterface$OnClickListener {

    private UGCGuideAddCollectionActivity a;

    E(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1) {
        a = UGCGuideAddCollectionActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        new G(a).b(new Void[0]);
    }
}
