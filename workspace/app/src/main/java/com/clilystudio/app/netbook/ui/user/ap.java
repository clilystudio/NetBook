package com.clilystudio.app.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class ap
        implements TextWatcher {
    ap(SmsSendActivity paramSmsSendActivity) {
    }

    public final void afterTextChanged(Editable paramEditable) {
        SmsSendActivity.a(this.a);
        if ((paramEditable == null) || (paramEditable.toString() == null)) {
            SmsSendActivity.a(this.a, false);
            return;
        }
        String str1 = paramEditable.toString().replace(" ", "");
        for (String str2 : SmsSendActivity.b(this.a))
            if ((str1.startsWith(str2)) && (str1.length() == 11 + str2.length())) {
                SmsSendActivity.a(this.a, true);
                return;
            }
        SmsSendActivity.a(this.a, false);
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ap
 * JD-Core Version:    0.6.2
 */