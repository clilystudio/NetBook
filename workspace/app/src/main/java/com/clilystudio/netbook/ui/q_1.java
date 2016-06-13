package com.clilystudio.netbook.ui;

import android.view.View;

final class q
        implements View.OnClickListener {
    private /* synthetic */ AudiobookCategoryActivity a;

    q(AudiobookCategoryActivity audiobookCategoryActivity) {
        this.a = audiobookCategoryActivity;
    }

    @Override
    public final void onClick(View view) {
        AudiobookCategoryActivity.a(this.a);
    }
}
