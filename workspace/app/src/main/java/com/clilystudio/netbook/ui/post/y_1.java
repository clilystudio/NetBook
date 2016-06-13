package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class y
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AddGirlTopicActivity a;

    y(AddGirlTopicActivity addGirlTopicActivity) {
        this.a = addGirlTopicActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
