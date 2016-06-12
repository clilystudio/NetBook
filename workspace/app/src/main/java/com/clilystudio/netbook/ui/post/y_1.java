package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class y implements DialogInterface$OnClickListener {

    private AddGirlTopicActivity a;

    y(AddGirlTopicActivity AddGirlTopicActivity1) {
        a = AddGirlTopicActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        a.finish();
    }
}
