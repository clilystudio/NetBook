package com.clilystudio.netbook.ui.game;

import android.view.MenuItem;

import com.clilystudio.netbook.util.N;

final class k
        implements m {
    private /* synthetic */ String a;
    private /* synthetic */ GameDetailActivity b;

    k(GameDetailActivity gameDetailActivity, String string) {
        this.b = gameDetailActivity;
        this.a = string;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final boolean a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131494059: {
                new N(this.b).a(this.a);
            }
            default: {
                return true;
            }
            case 2131494060:
        }
        new N(this.b).b(this.a, null);
        return true;
    }
}
