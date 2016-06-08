package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.VipPlan;

import java.io.IOException;

final class aj extends e<Void, Void, VipPlan> {
    private aj(RemoveAdActivity paramRemoveAdActivity) {
    }

    private VipPlan a() {
        try {
            VipPlan localVipPlan = b.b().m();
            return localVipPlan;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

