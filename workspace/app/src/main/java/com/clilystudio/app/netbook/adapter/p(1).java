package com.clilystudio.app.netbook.adapter;

import android.view.View;

import com.clilystudio.app.netbook.model.GirlTopicSummary;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.util.e;

final class p
        implements View.OnClickListener {
    p(o paramo, SmartImageView paramSmartImageView, GirlTopicSummary paramGirlTopicSummary) {
    }

    public final void onClick(View paramView) {
        this.a.getContext().startActivity(e.a(this.a.getContext(), this.b.getAuthor()));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.p
 * JD-Core Version:    0.6.2
 */