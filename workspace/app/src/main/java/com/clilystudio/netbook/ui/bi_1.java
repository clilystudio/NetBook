package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;

final class bi implements View.OnKeyListener {
    private /* synthetic */ LuckyGameWebActivity a;

    bi(LuckyGameWebActivity luckyGameWebActivity) {
        this.a = luckyGameWebActivity;
    }

    @Override
    public final boolean onKey(View view, int n, KeyEvent keyEvent) {
        if (n == 4 && LuckyGameWebActivity.d(this.a).canGoBack()) {
            LuckyGameWebActivity.d(this.a).goBack();
            return true;
        }
        return false;
    }
}
