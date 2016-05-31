package com.clilystudio.app.netbook.ui.ugcbook;

import android.view.View;

import com.arcsoft.hpay100.a.a;

final class v
        implements View.OnFocusChangeListener {
    v(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final void onFocusChange(View paramView, boolean paramBoolean) {
        UGCGuideAddBookActivity localUGCGuideAddBookActivity = this.a;
        if (!a.Q(UGCGuideAddBookActivity.a_initContentView(this.a).getText().toString())) ;
        for (boolean bool = true; ; bool = false) {
            UGCGuideAddBookActivity.c_initContentView(localUGCGuideAddBookActivity, bool);
            return;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.v
 * JD-Core Version:    0.6.2
 */