package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.DialogInterface;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

final class O implements DialogInterface.OnClickListener {
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
        final String string = String.valueOf(n + 1);
        e.a((Activity) N.a(this.d), (int) R.string.post_report_successful);
        if (!this.a) {
            if (this.b == null) {
                new Thread() {

                    @Override
                    public void run() {
                        com.clilystudio.netbook.api.b.a();
                        com.clilystudio.netbook.api.b.b().w(O.this.c, string);
                    }
                }.start();
                return;
            }
            new Thread() {

                @Override
                public void run() {
                    com.clilystudio.netbook.api.b.a();
                    com.clilystudio.netbook.api.b.b().l(O.this.c, O.this.b, string);
                }
            }.start();
            return;
        }
        if (this.b == null) {
            new Thread() {

                @Override
                public void run() {
                    com.clilystudio.netbook.api.b.a();
                    com.clilystudio.netbook.api.b.b().e(am.e().getToken(), O.this.c, string);
                }
            }.start();
            return;
        }
        new Thread() {

            @Override
            public void run() {
                com.clilystudio.netbook.api.b.a();
                com.clilystudio.netbook.api.b.b().b(O.this.c, O.this.b, string);
            }
        }.start();
    }
}
