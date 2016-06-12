package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class C implements DialogInterface$OnClickListener {

    private AddReviewActivity a;

    C(AddReviewActivity AddReviewActivity1) {
        a = AddReviewActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        DialogInterface1.dismiss();
        AddReviewActivity.c(a);
        a.finish();
    }
}
