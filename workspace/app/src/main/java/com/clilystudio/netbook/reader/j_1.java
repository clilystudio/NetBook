package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class j implements DialogInterface.OnClickListener {
    j(LocalChapterListActivity localChapterListActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
