package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.v
 * JD-Core Version:    0.6.2
 */