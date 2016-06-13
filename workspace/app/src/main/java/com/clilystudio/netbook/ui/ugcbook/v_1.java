package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class v
        implements View.OnFocusChangeListener {
    private /* synthetic */ UGCGuideAddBookActivity a;

    v(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.a = uGCGuideAddBookActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onFocusChange(View view, boolean bl) {
        UGCGuideAddBookActivity uGCGuideAddBookActivity = this.a;
        boolean bl2 = !a.Q(UGCGuideAddBookActivity.a(this.a).getText().toString());
        UGCGuideAddBookActivity.c(uGCGuideAddBookActivity, bl2);
    }
}
