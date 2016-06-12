package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.PaySheetItem;

final class al implements DialogInterface$OnClickListener {

    private ak a;

    al(ak ak1) {
        a = ak1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (ak.a(a) != null)
            ak.a(a).a((PaySheetItem) ak.b(a).get(int2));
    }
}
