package com.clilystudio.netbook.widget;

import android.view.MenuItem;

import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ar
        implements m {
    private /* synthetic */ AbsPostActivity a;

    ar(aq aq2, AbsPostActivity absPostActivity) {
        this.a = absPostActivity;
    }

    public final boolean a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return true;
            }
            case 2131494059: {
                this.a.e(0);
                return true;
            }
            case 2131494060:
        }
        this.a.e(1);
        return true;
    }
}
