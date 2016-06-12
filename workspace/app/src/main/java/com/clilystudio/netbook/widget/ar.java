package com.clilystudio.netbook.widget;

import android.view.MenuItem;

import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ar implements m {

    private AbsPostActivity a;

    ar(aq aq1, AbsPostActivity AbsPostActivity2) {
        a = AbsPostActivity2;
    }

    public final boolean a(MenuItem MenuItem1) {
        switch (MenuItem1.getItemId()) {
            default:
                return true;
            case 1195:
                a.e(0);
                return true;
            case 1196:
                a.e(1);
                return true;
        }
    }
}
