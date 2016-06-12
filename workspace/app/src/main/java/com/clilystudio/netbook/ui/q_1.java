package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class q implements View$OnClickListener {

    private AudiobookCategoryActivity a;

    q(AudiobookCategoryActivity AudiobookCategoryActivity1) {
        a = AudiobookCategoryActivity1;
    }

    public final void onClick(View View1) {
        AudiobookCategoryActivity.a(a);
    }
}
