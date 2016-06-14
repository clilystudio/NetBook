package com.clilystudio.netbook.reader;

import android.view.KeyEvent;
import android.view.View;

final class de implements View.OnKeyListener {
    private /* synthetic */ WebPageFragment a;

    de(WebPageFragment webPageFragment) {
        this.a = webPageFragment;
    }

    @Override
    public final boolean onKey(View view, int n, KeyEvent keyEvent) {
        if (n == 4 && WebPageFragment.d(this.a).canGoBack()) {
            WebPageFragment.d(this.a).goBack();
            return true;
        }
        return false;
    }
}
