package com.clilystudio.app.netbook.ui.user;

import android.view.View;

import com.clilystudio.app.netbook.model.VipPlan.Plan;

final class am
        implements View.OnClickListener {
    am(al paramal, int paramInt) {
    }

    public final void onClick(View paramView) {
        if (com.clilystudio.app.netbook.am_CommonUtils_CommonUtils.a(this.b.a) != null) {
            h localh = new h(this.b.a);
            localh.e = ("确定购买 " + ((VipPlan.Plan) al.a(this.b).get(this.a)).getName() + " 服务？");
            localh.a(2131034424, new an(this)).b(2131034129, null).b();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.am
 * JD-Core Version:    0.6.2
 */