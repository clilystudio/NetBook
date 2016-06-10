package com.clilystudio.netbook.ui.ugcbook;

import android.text.Editable;
import android.text.TextWatcher;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class u
        implements TextWatcher {
    u(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final void afterTextChanged(Editable paramEditable) {
        UGCGuideAddBookActivity localUGCGuideAddBookActivity = this.a;
        if (!a.Q(paramEditable.toString())) ;
        for (boolean bool = true; ; bool = false) {
            UGCGuideAddBookActivity.c(localUGCGuideAddBookActivity, bool);
            return;
        }
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
        UGCGuideAddBookActivity.a(this.a, null);
    }
}

