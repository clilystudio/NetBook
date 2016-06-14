package com.clilystudio.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class ap implements TextWatcher {
    private /* synthetic */ SmsSendActivity a;

    ap(SmsSendActivity smsSendActivity) {
        this.a = smsSendActivity;
    }

    @Override
    public final void afterTextChanged(Editable editable) {
        SmsSendActivity.a(this.a);
        if (editable == null || editable.toString() == null) {
            SmsSendActivity.a(this.a, false);
            return;
        }
        String string = editable.toString().replace(" ", "");
        for (String string2 : SmsSendActivity.b(this.a)) {
            if (!string.startsWith(string2) || string.length() != 11 + string2.length()) continue;
            SmsSendActivity.a(this.a, true);
            return;
        }
        SmsSendActivity.a(this.a, false);
    }

    @Override
    public final void beforeTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }

    @Override
    public final void onTextChanged(CharSequence charSequence, int n, int n2, int n3) {
    }
}
