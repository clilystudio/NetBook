package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ShelfMsgRoot;

final class J extends e<Void, Void, ShelfMsgRoot> {
    private /* synthetic */ HomeShelfFragment a;

    private J(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    /* synthetic */ J(HomeShelfFragment homeShelfFragment, byte by) {
        this(homeShelfFragment);
    }

    private static /* varargs */ ShelfMsgRoot a() {
        try {
            b.a();
            ShelfMsgRoot shelfMsgRoot = b.b().l();
            return shelfMsgRoot;
        } catch (Exception var0_1) {
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
        ShelfMsgRoot shelfMsgRoot = (ShelfMsgRoot) object;
        super.onPostExecute(shelfMsgRoot);
        if (this.a.getActivity() == null) return;
        if (shelfMsgRoot == null || !shelfMsgRoot.ok || shelfMsgRoot.message == null) {
            HomeShelfFragment.j(this.a).removeHeaderView(HomeShelfFragment.m(this.a));
            HomeShelfFragment.a(this.a).notifyDataSetChanged();
            return;
        }
        HomeShelfFragment.a(this.a, shelfMsgRoot.message);
        HomeShelfFragment.b(this.a, HomeShelfFragment.n(this.a));
    }
}
