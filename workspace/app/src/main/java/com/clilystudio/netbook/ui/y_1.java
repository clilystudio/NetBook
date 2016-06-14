package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.av;

final class y implements av {
    private /* synthetic */ AudiobookCategoryListActivity a;

    y(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        this.a = audiobookCategoryListActivity;
    }

    @Override
    public final void a() {
        AudiobookCategoryListActivity.b(this.a).setVisibility(0);
        AudiobookCategoryListActivity.h(this.a);
    }
}
