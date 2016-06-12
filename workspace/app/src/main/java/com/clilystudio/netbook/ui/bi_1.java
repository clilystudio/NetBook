package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class bi implements View$OnKeyListener {

    private LuckyGameWebActivity a;

    bi(LuckyGameWebActivity LuckyGameWebActivity1) {
        a = LuckyGameWebActivity1;
    }

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3) {
        if (int2 != 4 || !com.clilystudio.netbook.ui.LuckyGameWebActivity.d(a).canGoBack())
            return false;
        LuckyGameWebActivity.d(a).goBack();
        return true;
    }
}
