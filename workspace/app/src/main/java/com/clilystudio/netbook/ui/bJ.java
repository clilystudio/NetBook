package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.view.KeyEvent;
import android.widget.TextView;

import com.clilystudio.netbook.util.e;

final class bJ implements TextView.OnEditorActionListener {
    private /* synthetic */ SearchActivity a;

    bJ(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final boolean onEditorAction(TextView textView, int n, KeyEvent keyEvent) {
        if (SearchActivity.f(this.a).getText().toString().trim().equals("")) {
            e.a((Activity) this.a, (String) "\u8bf7\u8f93\u5165\u8981\u641c\u7d22\u7684\u5173\u952e\u5b57");
            return true;
        }
        SearchActivity.a(this.a, true, true);
        return true;
    }
}
