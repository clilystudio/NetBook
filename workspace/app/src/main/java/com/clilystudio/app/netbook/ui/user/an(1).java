package com.clilystudio.app.netbook.ui.user;

import android.content.DialogInterface;

import com.clilystudio.app.netbook.model.VipPlan.Plan;
import com.clilystudio.app.netbook.util.am_CommonUtils;

final class an
        implements DialogInterface.OnClickListener {
    an(am paramam) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        ak localak = new ak(this.a.b.a, this.a.b.a, "正在购买");
        String[] arrayOfString = new String[2];
        arrayOfString[0] = am_CommonUtils.e().getToken();
        arrayOfString[1] = ((VipPlan.Plan) al.a(this.a.b).get(this.a.a)).get_id();
        localak.b(arrayOfString);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.an
 * JD-Core Version:    0.6.2
 */