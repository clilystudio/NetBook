package com.clilystudio.netbook.reader;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class de implements View$OnKeyListener {

    private WebPageFragment a;

    de(WebPageFragment WebPageFragment1) {
        a = WebPageFragment1;
    }

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3) {
        if (int2 != 4 || !com.clilystudio.netbook.reader.WebPageFragment.d(a).canGoBack())
            return false;
        WebPageFragment.d(a).goBack();
        return true;
    }
}
