package com.clilystudio.netbook.adapter;

import android.view.View;

import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.e;

final class p
        implements View.OnClickListener {
    private /* synthetic */ SmartImageView a;
    private /* synthetic */ GirlTopicSummary b;

    p(o o2, SmartImageView smartImageView, GirlTopicSummary girlTopicSummary) {
        this.a = smartImageView;
        this.b = girlTopicSummary;
    }

    @Override
    public final void onClick(View view) {
        this.a.getContext().startActivity(e.a(this.a.getContext(), this.b.getAuthor()));
    }
}
