package com.clilystudio.netbook.ui.user;

import android.view.View;

import com.clilystudio.netbook.model.VipPlan.Plan;

final class am
        implements View.OnClickListener {
    am(al paramal, int paramInt) {
    }

    public final void onClick(View paramView) {
        if (com.clilystudio.netbook.am.a(this.b.a) != null) {
            h localh = new h(this.b.a);
            localh.e = ("确定购买 " + ((VipPlan.Plan) al.a(this.b).get(this.a)).getName() + " 服务？");
            localh.a(2131034424, new an(this)).b(2131034129, null).b();
        }
    }
}

