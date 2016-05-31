package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class T
        implements View.OnClickListener {
    T(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(View paramView) {
        int i = ((Integer) paramView.getTag()).intValue();
        AddVoteItemActivity.a_initContentView(this.a, i);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.T
 * JD-Core Version:    0.6.2
 */