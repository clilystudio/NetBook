package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

final class k
        implements View.OnClickListener {
    k(j paramj, TopicPost paramTopicPost) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
    }
}

