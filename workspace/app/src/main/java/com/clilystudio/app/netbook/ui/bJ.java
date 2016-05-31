package com.clilystudio.app.netbook.ui;

import android.view.KeyEvent;
import android.widget.TextView;

import com.clilystudio.app.netbook.util.e;

final class bJ
        implements TextView.OnEditorActionListener {
    bJ(SearchActivity paramSearchActivity) {
    }

    public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
        if (SearchActivity.f_setTitle(this.a).getText().toString().trim().equals("")) {
            e.a(this.a, "请输入要搜索的关键字");
            return true;
        }
        SearchActivity.a_initContentView(this.a, true, true);
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bJ
 * JD-Core Version:    0.6.2
 */