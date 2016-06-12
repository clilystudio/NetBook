package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.e;

final class p implements View$OnClickListener {

    private SmartImageView a;
    private GirlTopicSummary b;
    p(o o1, SmartImageView SmartImageView2, GirlTopicSummary GirlTopicSummary3) {
        a = SmartImageView2;
        b = GirlTopicSummary3;
    }

    public final void onClick(View View1) {
        a.getContext().startActivity(e.a(a.getContext(), b.getAuthor()));
    }
}
