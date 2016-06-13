package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.model.GameCatRoot;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class c
        extends e<String, Void, List<GameCat>> {
    private /* synthetic */ GameCatListFragment a;

    private c(GameCatListFragment gameCatListFragment) {
        this.a = gameCatListFragment;
    }

    /* synthetic */ c(GameCatListFragment gameCatListFragment, byte by) {
        this(gameCatListFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static /* varargs */ List<GameCat> a() {
        b.a();
        GameCatRoot gameCatRoot = b.b().r();
        if (gameCatRoot == null) return null;
        try {
            if (!gameCatRoot.isOk()) return null;
            if (gameCatRoot.getGames() == null) return null;
            return Arrays.asList(gameCatRoot.getGames());
        } catch (IOException var0_2) {
            var0_2.printStackTrace();
        }
        return null;
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
        List list = (List) object;
        super.onPostExecute(list);
        if (this.a.getActivity() == null) return;
        if (list != null) {
            if (list.size() > 0) {
                this.a.c();
                GameCatListFragment.b(this.a).a(list);
                return;
            }
            this.a.d();
            return;
        }
        this.a.e();
    }
}
