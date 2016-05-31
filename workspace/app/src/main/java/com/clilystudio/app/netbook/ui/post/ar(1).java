package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class ar
        implements View.OnClickListener {
    ar(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.k(this.b).setText("全部");
        BookHelpListActivity.b_initContentView(this.b, false);
        BookHelpListActivity.a_initContentView(this.b, "all");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ar
 * JD-Core Version:    0.6.2
 */