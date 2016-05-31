package com.clilystudio.app.netbook.ui.ugcbook;

import android.text.Editable;
import android.text.TextWatcher;

import com.arcsoft.hpay100.a.a;

final class u
        implements TextWatcher {
    u(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
    }

    public final void afterTextChanged(Editable paramEditable) {
        UGCGuideAddBookActivity localUGCGuideAddBookActivity = this.a;
        if (!a.Q(paramEditable.toString())) ;
        for (boolean bool = true; ; bool = false) {
            UGCGuideAddBookActivity.c_initContentView(localUGCGuideAddBookActivity, bool);
            return;
        }
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
        UGCGuideAddBookActivity.a_initContentView(this.a, null);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.u
 * JD-Core Version:    0.6.2
 */