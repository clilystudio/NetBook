package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.PopupWindow;

final class as
        implements View.OnClickListener {
    as(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        BookHelpListActivity.b(this.b, true);
        BookHelpListActivity.k(this.b).setText("精品");
        BookHelpListActivity.a(this.b, "all");
        BookHelpListActivity.l(this.b).setRefreshing();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.as
 * JD-Core Version:    0.6.2
 */