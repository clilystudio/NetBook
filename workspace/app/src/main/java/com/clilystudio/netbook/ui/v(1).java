package com.clilystudio.netbook.ui;

import android.view.View;

import com.ximalaya.ting.android.opensdk.model.tag.Tag;

final class v
        implements View.OnClickListener {
    v(AudiobookCategoryActivity paramAudiobookCategoryActivity, Tag paramTag) {
    }

    public final void onClick(View paramView) {
        this.b.startActivity(AudiobookCategoryListActivity.a(this.b, this.a.getTagName()));
    }
}

