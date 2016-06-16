package com.clilystudio.netbook.widget;

import android.view.MenuItem;

import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ar implements m {
    private /* synthetic */ AbsPostActivity a;

    ar(aq aq2, AbsPostActivity absPostActivity) {
        this.a = absPostActivity;
    }

    public final boolean a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return true;
            }
            case R.id.game_post_menu_1: {
                this.a.e(0);
                return true;
            }
            case R.id.game_post_menu_2:
        }
        this.a.e(1);
        return true;
    }
}
