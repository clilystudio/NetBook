package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameRoot;

final class j extends e<Void, Void, GameRoot> {
    private j(ChargeActivity paramChargeActivity) {
    }

    private static GameRoot a() {
        try {
            b.a();
            GameRoot localGameRoot = b.b().p();
            return localGameRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}
