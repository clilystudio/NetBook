package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ai
        implements View.OnClickListener {
    ai(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.m(this.b).setText(2131034434);
        BookHelpListActivity.b_initContentView(this.b, "comment-count");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ai
 * JD-Core Version:    0.6.2
 */