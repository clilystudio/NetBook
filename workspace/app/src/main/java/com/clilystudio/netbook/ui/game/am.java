package com.clilystudio.netbook.ui.game;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class am
        extends com.clilystudio.netbook.a_pack.e<String, Void, List<Game>> {
    private /* synthetic */ GameRankListFragment a;

    private am(GameRankListFragment gameRankListFragment) {
        this.a = gameRankListFragment;
    }

    /* synthetic */ am(GameRankListFragment gameRankListFragment, byte by) {
        this(gameRankListFragment);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<Game> a() {
        b.a();
        GameRoot gameRoot = b.b().a(GameRankListFragment.b(this.a).size(), 20);
        if (gameRoot == null) return null;
        try {
            if (!gameRoot.isOk()) return null;
            if (gameRoot.getGames() == null) return null;
            return Arrays.asList(gameRoot.getGames());
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
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
        GameRankListFragment.d(this.a).setVisibility(8);
        boolean bl = GameRankListFragment.b(this.a).isEmpty();
        if (list != null) {
            int n = list.size();
            if (n > 0) {
                this.a.c();
                GameRankListFragment.b(this.a).addAll(list);
                GameRankListFragment.e(this.a).a(GameRankListFragment.b(this.a));
                GameRankListFragment.c(this.a);
                if (n >= 20) {
                    GameRankListFragment.a(this.a).setOnLastItemListener(GameRankListFragment.f(this.a));
                    return;
                }
            } else if (bl) {
                this.a.d();
                return;
            }
            GameRankListFragment.a(this.a).setOnLastItemListener(null);
            return;
        }
        if (bl) {
            this.a.e();
            return;
        }
        e.a((Activity) this.a.getActivity(), (String) "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
