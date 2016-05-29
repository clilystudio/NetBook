package com.clilystudio.app.netbook.ui.post;

import android.view.View;

final class am
        implements View.OnClickListener {
    am(BookHelpListActivity paramBookHelpListActivity) {
    }

    public final void onClick(View paramView) {
        BookHelpListActivity.a(this.a, false).showAsDropDown(paramView);
        BookHelpListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.am
 * JD-Core Version:    0.6.2
 */