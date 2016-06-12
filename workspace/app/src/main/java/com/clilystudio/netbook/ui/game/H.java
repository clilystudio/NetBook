package com.clilystudio.netbook.ui.game;

import android.content.Context;

import com.clilystudio.netbook.model.GameLayoutRoot;

import java.io.IOException;

final class H extends com.clilystudio.netbook.a.e {

    private GameLayoutFragment a;

    H(GameLayoutFragment GameLayoutFragment1, byte byte2) {
        this(GameLayoutFragment1);
    }

    private H(GameLayoutFragment GameLayoutFragment1) {
        a = GameLayoutFragment1;
    }

    private static transient GameLayoutRoot a() {
        GameLayoutRoot GameLayoutRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            GameLayoutRoot3 = com.clilystudio.netbook.api.b.b().q();
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return GameLayoutRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (GameLayoutRoot) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            if (Object2 != null && ((GameLayoutRoot) Object2).isOk() && ((GameLayoutRoot) Object2).getLayout() != null) {
                a.c();
                GameLayoutFragment.a(a, ((GameLayoutRoot) Object2).getLayout());
                if (com.clilystudio.netbook.hpay100.a.a.r((Context) a.getActivity(), "switch_aoyou_game"))
                    GameLayoutFragment.c(a).add(GameLayoutFragment.g());
                GameLayoutFragment.a(a, ((GameLayoutRoot) Object2).getPromotion());
                GameLayoutFragment.a(a);
            } else {
                a.e();
                return;
            }
        }
    }
}
