package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

final class D implements DialogInterface.OnClickListener {
    private /* synthetic */ UGCGuideAddCollectionActivity a;

    D(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        this.a = uGCGuideAddCollectionActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.finish();
    }
}
