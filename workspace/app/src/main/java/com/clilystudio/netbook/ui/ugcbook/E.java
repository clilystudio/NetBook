package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

final class E implements DialogInterface.OnClickListener {
    private /* synthetic */ UGCGuideAddCollectionActivity a;

    E(UGCGuideAddCollectionActivity uGCGuideAddCollectionActivity) {
        this.a = uGCGuideAddCollectionActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        new G(this.a).b(new Void[0]);
    }
}
