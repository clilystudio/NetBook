package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class S
        implements View.OnClickListener {
    S(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(View paramView) {
        int i = ((Integer) paramView.getTag()).intValue();
        AddVoteItemActivity.a_initContentView(this.a, AddVoteItemActivity.d_setTitle(this.a)[i], i);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.S
 * JD-Core Version:    0.6.2
 */