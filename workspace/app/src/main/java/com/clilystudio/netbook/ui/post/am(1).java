package com.clilystudio.netbook.ui.post;

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

