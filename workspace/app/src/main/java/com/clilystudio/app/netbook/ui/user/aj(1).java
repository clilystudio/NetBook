package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.VipPlan;

import java.io.IOException;

final class aj extends e_BaseAsyncTask<Void, Void, VipPlan> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aj
 * JD-Core Version:    0.6.2
 */