package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameLayoutRoot;

import java.io.IOException;

final class H
        extends e<String, Void, GameLayoutRoot> {
    private /* synthetic */ GameLayoutFragment a;

    private H(GameLayoutFragment gameLayoutFragment) {
        this.a = gameLayoutFragment;
    }

    /* synthetic */ H(GameLayoutFragment gameLayoutFragment, byte by) {
        this(gameLayoutFragment);
    }

    private static /* varargs */ GameLayoutRoot a() {
        try {
            b.a();
            GameLayoutRoot gameLayoutRoot = b.b().q();
            return gameLayoutRoot;
        } catch (IOException var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        GameLayoutRoot gameLayoutRoot = (GameLayoutRoot) object;
        super.onPostExecute(gameLayoutRoot);
        if (this.a.getActivity() == null) return;
        if (gameLayoutRoot != null && gameLayoutRoot.isOk() && gameLayoutRoot.getLayout() != null) {
            this.a.c();
            GameLayoutFragment.a(this.a, gameLayoutRoot.getLayout());
            if (a.r(this.a.getActivity(), "switch_aoyou_game")) {
                GameLayoutFragment.c(this.a).add(GameLayoutFragment.g());
            }
            GameLayoutFragment.a(this.a, gameLayoutRoot.getPromotion());
            GameLayoutFragment.a(this.a);
            return;
        }
        this.a.e();
    }
}
