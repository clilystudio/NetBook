package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameRoot;

final class j extends e<Void, Void, GameRoot> {
    private /* synthetic */ ChargeActivity a;

    private j(ChargeActivity chargeActivity) {
        this.a = chargeActivity;
    }

    /* synthetic */ j(ChargeActivity chargeActivity, byte by) {
        this(chargeActivity);
    }

    private static /* varargs */ GameRoot a() {
        try {
            b.a();
            GameRoot gameRoot = b.b().p();
            return gameRoot;
        } catch (Exception var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        GameRoot gameRoot = (GameRoot) object;
        super.onPostExecute(gameRoot);
        if (gameRoot != null && gameRoot.isOk()) {
            Object[] arrobject = gameRoot.getGames();
            ChargeActivity.b(this.a).a(arrobject);
            if (arrobject.length > 0) {
                this.a.f();
                return;
            }
            this.a.g();
            return;
        }
        this.a.h();
    }
}
