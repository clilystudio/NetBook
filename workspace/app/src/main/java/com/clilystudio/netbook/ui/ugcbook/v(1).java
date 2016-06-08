package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

import com.arcsoft.hpay100.a.a;

final class v
        implements View.OnFocusChangeListener {
    v(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final void onFocusChange(View paramView, boolean paramBoolean) {
        UGCGuideAddBookActivity localUGCGuideAddBookActivity = this.a;
        if (!a.Q(UGCGuideAddBookActivity.a(this.a).getText().toString())) ;
        for (boolean bool = true; ; bool = false) {
            UGCGuideAddBookActivity.c(localUGCGuideAddBookActivity, bool);
            return;
        }
    }
}

