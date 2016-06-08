package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class ay
        implements TextWatcher {
    ay(SendView paramSendView) {
    }

    public final void afterTextChanged(Editable paramEditable) {
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
        SendView.a(this.a);
    }
}

