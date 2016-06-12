package com.clilystudio.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class at implements TextWatcher {

    private SmsVerifyActivity a;

    at(SmsVerifyActivity SmsVerifyActivity1) {
        a = SmsVerifyActivity1;
    }

    public final void afterTextChanged(Editable Editable1) {
        if (Editable1.length() > 0)
            SmsVerifyActivity.a(a, true);
        else
            SmsVerifyActivity.a(a, false);
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4) {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4) {
    }
}
