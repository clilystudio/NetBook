package com.clilystudio.netbook.view;

import android.content.DialogInterface;

final class d implements DialogInterface.OnClickListener {
    private /* synthetic */ c a;

    d(c c2) {
        this.a = c2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        int n2 = 0;
        switch (n) {
            case 2131494065: {
                n2 = 2;
            }
            default: {
                break;
            }
            case 2131494063: {
                n2 = 4;
            }
        }
        if (c.a(this.a) == null) return;
        c.a(this.a).a(n2);
    }
}
