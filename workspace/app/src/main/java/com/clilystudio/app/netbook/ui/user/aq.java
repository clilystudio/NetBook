package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aq
        implements View.OnClickListener {
    aq(SmsSendActivity paramSmsSendActivity) {
    }

    public final void onClick(View paramView) {
        if (SmsSendActivity.a_initContentView(this.a, this.a.mNumberText.getText().toString())) {
            Intent localIntent = SmsVerifyActivity.a(this.a, SmsSendActivity.c_initContentView(this.a), this.a.mNumberText.getText().toString());
            this.a.startActivity(localIntent);
            return;
        }
        SmsSendActivity.d_setTitle(this.a);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aq
 * JD-Core Version:    0.6.2
 */