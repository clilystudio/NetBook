package com.clilystudio.netbook.ui.game;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GamePostRoot;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class r extends com.clilystudio.netbook.a_pack.e<String, Void, List<GamePostRoot.GamePost>> {
    private /* synthetic */ GameDetailActivity a;

    private r(GameDetailActivity gameDetailActivity) {
        this.a = gameDetailActivity;
    }

    /* synthetic */ r(GameDetailActivity gameDetailActivity, byte by) {
        this(gameDetailActivity);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ List<GamePostRoot.GamePost> a(String... arrstring) {
        GamePostRoot gamePostRoot = b.b().d(arrstring[0], GameDetailActivity.c(this.a).size(), 10);
        if (gamePostRoot == null) return null;
        try {
            if (gamePostRoot.getPosts() == null) return null;
            return Arrays.asList(gamePostRoot.getPosts());
        } catch (Exception var2_4) {
            var2_4.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        List list = (List) object;
        super.onPostExecute(list);
        GameDetailActivity.i(this.a).setVisibility(View.GONE);
        GameDetailActivity.b(this.a).setOnLastItemListener(GameDetailActivity.j(this.a));
        if (list != null) {
            int n2 = list.size();
            GameDetailActivity.c(this.a).addAll(list);
            GameDetailActivity.k(this.a).a(GameDetailActivity.c(this.a));
            if (n2 < 10) {
                GameDetailActivity.b(this.a).removeFooterView(GameDetailActivity.i(this.a));
                GameDetailActivity.b(this.a).setOnLastItemListener(null);
            }
            return;
        }
        GameDetailActivity.l(this.a);
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
