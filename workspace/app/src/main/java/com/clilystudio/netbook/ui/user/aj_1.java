package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.VipPlan;

import java.io.IOException;
import java.util.Arrays;

final class aj
        extends e<Void, Void, VipPlan> {
    private /* synthetic */ RemoveAdActivity a;

    private aj(RemoveAdActivity removeAdActivity) {
        this.a = removeAdActivity;
    }

    /* synthetic */ aj(RemoveAdActivity removeAdActivity, byte by) {
        this(removeAdActivity);
    }

    private /* varargs */ VipPlan a() {
        try {
            VipPlan vipPlan = b.b().m();
            return vipPlan;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    public final /* synthetic */ void onPostExecute(Object object) {
        VipPlan vipPlan = (VipPlan) object;
        if (vipPlan != null && vipPlan.isOk()) {
            this.a.f();
            this.a.a.a(Arrays.asList(vipPlan.getPlans()));
            return;
        }
        this.a.h();
    }
}
