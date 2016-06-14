package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class v implements DialogInterface.OnClickListener {
    v(AddGirlTopicActivity addGirlTopicActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
