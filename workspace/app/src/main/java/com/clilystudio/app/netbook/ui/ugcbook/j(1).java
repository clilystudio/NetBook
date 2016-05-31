package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.View;

final class j
        implements View.OnClickListener {
    j(UGCDetailActivity paramUGCDetailActivity) {
    }

    public final void onClick(View paramView) {
        UGCDetailActivity.d_setTitle(this.a).setMaxLines(2147483647);
        UGCDetailActivity.d_setTitle(this.a).setEllipsize(null);
        UGCDetailActivity.d_setRight(this.a).setVisibility(8);
        UGCDetailActivity.d_setTitle(this.a).setClickable(false);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.j
 * JD-Core Version:    0.6.2
 */