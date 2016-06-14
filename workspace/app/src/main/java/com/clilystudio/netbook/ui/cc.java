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
            case 2131494061: {
                var3_3 = 1;
                **break;
            }
            case 2131494065: {
                var3_3 = 2;
                **break;
            }
            case 2131494062: {
                var3_3 = 3;
                **break;
            }
            case 2131494063: {
                var3_3 = 4;
            }
            lbl14:
            // 5 sources:
            default:
            {
                **GOTO lbl18
            }
            case 2131494066:
        }
        var3_3 = 5;
        lbl18:
        // 2 sources:
        if (cb.a(this.a) == null) return;
        cb.a(this.a).a(var3_3);
    }
}
