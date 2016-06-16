package com.clilystudio.netbook.ui;

import android.content.DialogInterface;

final class cc implements DialogInterface.OnClickListener {
    private /* synthetic */ cb a;

    cc(cb cb2) {
        this.a = cb2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void onClick(DialogInterface var1_1, int var2_2) {
        var3_3 = 0;
        switch (var2_2) {
            case R.id.wx_friend: {
                var3_3 = 1;
                **break;
            }
            case R.id.wx_moments: {
                var3_3 = 2;
                **break;
            }
            case R.id.qq_friend: {
                var3_3 = 3;
                **break;
            }
            case R.id.qzone: {
                var3_3 = 4;
            }
            lbl14:
            // 5 sources:
            default:
            {
                **GOTO lbl18
            }
            case R.id.copy:
        }
        var3_3 = 5;
        lbl18:
        // 2 sources:
        if (cb.a(this.a) == null) return;
        cb.a(this.a).a(var3_3);
    }
}
