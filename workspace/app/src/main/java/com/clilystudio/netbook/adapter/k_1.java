package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

final class k
        implements View.OnClickListener {
    private /* synthetic */ TopicPost a;

    k(j j2, TopicPost topicPost) {
        this.a = topicPost;
    }

    @Override
    public final void onClick(View view) {
        view.getContext().startActivity(e.a(view.getContext(), this.a.getAuthor()));
    }
}
