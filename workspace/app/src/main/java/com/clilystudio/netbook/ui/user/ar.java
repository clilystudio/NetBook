package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

final class ar implements DialogInterface.OnClickListener {
    private /* synthetic */ SmsSendActivity a;

    ar(SmsSendActivity smsSendActivity) {
        this.a = smsSendActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        SmsSendActivity.e(this.a);
    }
}
