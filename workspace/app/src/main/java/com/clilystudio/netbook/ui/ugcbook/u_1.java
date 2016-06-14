package com.clilystudio.netbook.ui.ugcbook;

import android.text.Editable;
import android.text.TextWatcher;

final class u implements TextWatcher {
    private /* synthetic */ UGCGuideAddBookActivity a;

    u(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.a = uGCGuideAddBookActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void afterTextChanged(Editable editable) {
        UGCGuideAddBookActivity uGCGuideAddBookActivity = this.a;
        boolean bl = !a.Q(editable.toString());
        UGCGuideAddBookActivity.c(uGCGuideAddBookActivity, bl);
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
        UGCGuideAddBookActivity.a(this.a, null);
    }
}
