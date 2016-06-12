package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.VipPlan.Plan;

final class an
        implements DialogInterface.OnClickListener {
    an(am paramam) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ak localak = new ak(this.a.b.a, this.a.b.a, "正在购买");
        String[] arrayOfString = new String[2];
        arrayOfString[0] = com.clilystudio.netbook.am.e().getToken();
        arrayOfString[1] = ((VipPlan.Plan) al.a(this.a.b).get(this.a.a)).get_id();
        localak.b(arrayOfString);
    }
}

