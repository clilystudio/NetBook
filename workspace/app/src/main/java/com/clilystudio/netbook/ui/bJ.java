package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView$OnEditorActionListener;

import com.clilystudio.netbook.util.e;

final class bJ implements TextView$OnEditorActionListener {

    private SearchActivity a;

    bJ(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final boolean onEditorAction(TextView TextView1, int int2, KeyEvent KeyEvent3) {
        if (SearchActivity.f(a).getText().toString().trim().equals(""))
            e.a((Activity) a, "\u8BF7\u8F93\u5165\u8981\u641C\u7D22\u7684\u5173\u952E\u5B57");
        else
            SearchActivity.a(a, true, true);
        return true;
    }
}
