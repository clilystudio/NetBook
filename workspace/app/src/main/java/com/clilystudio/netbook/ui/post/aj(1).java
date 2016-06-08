package com.clilystudio.netbook.ui.post;

final class aj
        implements PopupWindow.OnDismissListener {
    aj(BookHelpListActivity paramBookHelpListActivity) {
    }

    public final void onDismiss() {
        BookHelpListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
        BookHelpListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    }
}

