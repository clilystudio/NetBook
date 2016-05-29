package com.clilystudio.app.netbook.ui.feed;

import android.app.AlertDialog;
import android.view.View;

final class i
        implements View.OnClickListener {
    i(FeedSettingActivity paramFeedSettingActivity, AlertDialog paramAlertDialog, int paramInt1, int paramInt2) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        if (this.b != this.c)
            FeedSettingActivity.b(this.d, this.b);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.i
 * JD-Core Version:    0.6.2
 */