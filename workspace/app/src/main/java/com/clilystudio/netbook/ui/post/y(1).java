package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class y
        implements DialogInterface.OnClickListener {
    y(AddGirlTopicActivity paramAddGirlTopicActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

