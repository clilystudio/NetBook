package com.clilystudio.netbook.ui;

import android.view.View;

final class r implements View.OnClickListener {
    private /* synthetic */ AudiobookCategoryActivity a;

    r(AudiobookCategoryActivity audiobookCategoryActivity) {
        this.a = audiobookCategoryActivity;
    }

    @Override
    public final void onClick(View view) {
        AudiobookCategoryActivity.b(this.a);
    }
}
