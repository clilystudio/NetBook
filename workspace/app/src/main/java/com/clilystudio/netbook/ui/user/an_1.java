package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;

final class an implements DialogInterface.OnClickListener {
    private /* synthetic */ am a;

    an(am am2) {
        this.a = am2;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        ak ak2 = new ak(this.a.b.a, this.a.b.a, "\u6b63\u5728\u8d2d\u4e70");
        String[] arrstring = new String[]{com.clilystudio.netbook.am.e().getToken(), ((VipPlan$Plan) al.a(this.a.b).get(this.a.a)).get_id()};
        ak2.b(arrstring);
    }
}
