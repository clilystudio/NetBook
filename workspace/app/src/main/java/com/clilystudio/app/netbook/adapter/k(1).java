package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.model.TopicPost;
import com.clilystudio.app.netbook.util.e;

final class k
        implements View.OnClickListener {
    k(j paramj, TopicPost paramTopicPost) {
    }

    public final void onClick(View paramView) {
        paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.k
 * JD-Core Version:    0.6.2
 */