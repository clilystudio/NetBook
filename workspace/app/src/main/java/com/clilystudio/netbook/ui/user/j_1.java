package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameRoot;

final class j
        extends e<Void, Void, GameRoot> {
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

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
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
