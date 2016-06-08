package com.clilystudio.netbook.ui.post;

import android.view.View;

import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.util.e;

final class ct
        implements View.OnClickListener {
    ct(PostDetailActivity paramPostDetailActivity, Author paramAuthor) {
    }

    public final void onClick(View paramView) {
        this.b.startActivity(e.a(this.b, this.a));
    }
}

