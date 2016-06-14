package com.clilystudio.netbook.ui;

import android.content.DialogInterface;

final class t implements DialogInterface.OnClickListener {
    t(AudiobookCategoryActivity audiobookCategoryActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
