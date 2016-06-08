package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.DeleteResult;

final class i extends e<Void, Void, DeleteResult> {
    private i(ChargeActivity paramChargeActivity) {
    }

    private DeleteResult a() {
        try {
            b.a();
            DeleteResult localDeleteResult = b.b().e(ChargeActivity.c(this.a), am.e().getToken());
            return localDeleteResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

