package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.widget.TextView;

import com.clilystudio.netbook.util.e;

final class bJ
        implements TextView.OnEditorActionListener {
    bJ(SearchActivity paramSearchActivity) {
    }

    public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
        if (SearchActivity.f(this.a).getText().toString().trim().equals("")) {
            e.a(this.a, "请输入要搜索的关键字");
            return true;
        }
        SearchActivity.a(this.a, true, true);
        return true;
    }
}

