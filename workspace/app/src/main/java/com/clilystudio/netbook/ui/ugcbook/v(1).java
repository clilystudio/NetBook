package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

import com.clilystudio.netbook.hpay100.a_Pack.a;

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

