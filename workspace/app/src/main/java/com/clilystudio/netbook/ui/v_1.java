package com.clilystudio.netbook.ui;

import android.view.View;

import com.ximalaya.ting.android.opensdk.model.tag.Tag;

final class v implements View.OnClickListener {
    private /* synthetic */ Tag a;
    private /* synthetic */ AudiobookCategoryActivity b;

    v(AudiobookCategoryActivity audiobookCategoryActivity, Tag tag) {
        this.b = audiobookCategoryActivity;
        this.a = tag;
    }

    @Override
    public final void onClick(View view) {
        this.b.startActivity(AudiobookCategoryListActivity.a(this.b, this.a.getTagName()));
    }
}
