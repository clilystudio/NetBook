package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.model.VipPlan$Plan;

final class an implements DialogInterface$OnClickListener {

    private am a;

    an(am am1) {
        a = am1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        ak ak3;
        String[] String_1darray4;

        DialogInterface1.dismiss();
        ak3 = new ak(a.b.a, (Activity) a.b.a, "\u6B63\u5728\u8D2D\u4E70");
        String_1darray4 = new String[2];
        String_1darray4[0] = android.support.design.widget.am.e().getToken();
        String_1darray4[1] = ((VipPlan$Plan) al.a(a.b).get(a.a)).get_id();
        ak3.b(String_1darray4);
    }
}
