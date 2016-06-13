package com.clilystudio.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class at
        implements TextWatcher {
    private /* synthetic */ SmsVerifyActivity a;

    at(SmsVerifyActivity smsVerifyActivity) {
        this.a = smsVerifyActivity;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
        if (editable.length() > 0) {
            SmsVerifyActivity.a(this.a, true);
            return;
        }
        SmsVerifyActivity.a(this.a, false);
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }
}
