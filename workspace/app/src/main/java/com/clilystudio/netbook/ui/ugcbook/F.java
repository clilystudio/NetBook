package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

final class F implements DialogInterface.OnClickListener {
    private /* synthetic */ UGCGuideAddCollectionActivity a;

    F(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        this.a = uGCGuideAddCollectionActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.finish();
    }
}
