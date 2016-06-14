package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.view.View;

import com.clilystudio.netbook.model.VipPlan$Plan;

final class am implements View.OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ al b;

    am(al al2, int n) {
        this.b = al2;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        if (com.clilystudio.netbook.am.a(this.b.a) != null) {
            h h2 = new h(this.b.a);
            h2.e = "\u786e\u5b9a\u8d2d\u4e70 " + ((VipPlan$Plan) al.a(this.b).get(this.a)).getName() + " \u670d\u52a1\uff1f";
            h2.a(2131034424, (DialogInterface.OnClickListener) new an(this)).b(2131034129, null).b();
        }
    }
}
