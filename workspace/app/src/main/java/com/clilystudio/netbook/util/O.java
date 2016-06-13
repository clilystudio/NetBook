package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.DialogInterface;

final class O
        implements DialogInterface.OnClickListener {
    private /* synthetic */ boolean a;
    private /* synthetic */ String b;
    private /* synthetic */ String c;
    private /* synthetic */ N d;

    O(N n, boolean bl, String string, String string2) {
        this.d = n;
        this.a = bl;
        this.b = string;
        this.c = string2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        String string = String.valueOf(n + 1);
        e.a((Activity) N.a(this.d), (int) 2131034431);
        if (!this.a) {
            if (this.b == null) {
                new an(this.c, string).start();
                return;
            }
            new ao(this.c, this.b, string).start();
            return;
        }
        if (this.b == null) {
            new ap(this.c, string).start();
            return;
        }
        new aq(this.c, this.b, string).start();
    }
}
