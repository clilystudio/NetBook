package com.clilystudio.netbook.widget;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.PaySheetItem;

final class al
        implements DialogInterface.OnClickListener {
    al(ak paramak) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        if (ak.a(this.a) != null)
            ak.a(this.a).a((PaySheetItem) ak.b(this.a).get(paramInt));
    }
}

