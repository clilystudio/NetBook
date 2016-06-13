package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.PaySheetItem;

final class al
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ak a;

    al(ak ak2) {
        this.a = ak2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        if (ak.a(this.a) != null) {
            ak.a(this.a).a((PaySheetItem) ak.b(this.a).get(n));
        }
    }
}
