package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.ShelfMsgRoot;

final class J extends e {

    private HomeShelfFragment a;

    J(HomeShelfFragment HomeShelfFragment1, byte byte2) {
        this(HomeShelfFragment1);
    }

    private J(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    private static transient ShelfMsgRoot a() {
        ShelfMsgRoot ShelfMsgRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            ShelfMsgRoot3 = com.clilystudio.netbook.api.b.b().l();
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return ShelfMsgRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (ShelfMsgRoot) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            if (Object2 == null || !((ShelfMsgRoot) Object2).ok || ((ShelfMsgRoot) Object2).message == null) {
                HomeShelfFragment.j(a).removeHeaderView(HomeShelfFragment.m(a));
                HomeShelfFragment.a(a).notifyDataSetChanged();
            } else {
                HomeShelfFragment.a(a, ((ShelfMsgRoot) Object2).message);
                HomeShelfFragment.b(a, HomeShelfFragment.n(a));
                return;
            }
        }
    }
}
