package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class O implements DialogInterface$OnClickListener {

    private AddVoteActivity a;

    O(AddVoteActivity AddVoteActivity1) {
        a = AddVoteActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.finish();
    }
}
