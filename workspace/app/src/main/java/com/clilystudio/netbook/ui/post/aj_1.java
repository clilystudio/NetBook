package com.clilystudio.netbook.ui.post;

import android.widget.PopupWindow;

final class aj
        implements PopupWindow.OnDismissListener {
    private /* synthetic */ BookHelpListActivity a;

    aj(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void onDismiss() {
        BookHelpListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        BookHelpListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}
