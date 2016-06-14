package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameLayoutRoot;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class W
        extends e<String, Void, GameLayoutRoot> {
    private /* synthetic */ GameMicroFragment a;

    private W(GameMicroFragment gameMicroFragment) {
        this.a = gameMicroFragment;
    }

    /* synthetic */ W(GameMicroFragment gameMicroFragment, byte by) {
        this(gameMicroFragment);
    }

    private static /* varargs */ GameLayoutRoot a() {
        try {
            b.a();
            GameLayoutRoot gameLayoutRoot = b.b().s();
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
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        int n = 1;
        GameLayoutRoot gameLayoutRoot = (GameLayoutRoot) object;
        super.onPostExecute(gameLayoutRoot);
        if (this.a.getActivity() == null) return;
        if (gameLayoutRoot != null && gameLayoutRoot.isOk() && gameLayoutRoot.getLayout() != null) {
            this.a.c();
            GameMicroFragment.a(this.a, gameLayoutRoot.getLayout());
            if (GameMicroFragment.d(this.a) != null) {
                this.a.g();
                List list = GameMicroFragment.d(this.a);
                if (GameMicroFragment.d(this.a).size() <= n) {
                    n = 0;
                }
                list.add(n, GameMicroFragment.c(this.a));
            }
            GameMicroFragment.b(this.a, new ArrayList());
            Iterator iterator = GameMicroFragment.d(this.a).iterator();
            do {
                if (!iterator.hasNext()) {
                    GameMicroFragment.a(this.a, gameLayoutRoot.getPromotions());
                    return;
                }
                GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = (GameLayoutRoot$ModuleLayout) iterator.next();
                if (gameLayoutRoot$ModuleLayout.getActivity() == null || gameLayoutRoot$ModuleLayout.getType() != ModuleType.ACTIVITY) continue;
                GameMicroFragment.e(this.a).add(gameLayoutRoot$ModuleLayout.getActivity().getBannerImage());
            } while (true);
        }
        this.a.e();
    }
}
