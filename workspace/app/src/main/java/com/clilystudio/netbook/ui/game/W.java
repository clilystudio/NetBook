package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.model.GameLayoutRoot;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class W extends com.clilystudio.netbook.a.e {

    private GameMicroFragment a;

    W(GameMicroFragment GameMicroFragment1, byte byte2) {
        this(GameMicroFragment1);
    }

    private W(GameMicroFragment GameMicroFragment1) {
        a = GameMicroFragment1;
    }

    private static transient GameLayoutRoot a() {
        GameLayoutRoot GameLayoutRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            GameLayoutRoot3 = com.clilystudio.netbook.api.b.b().s();
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
        int int2 = 1;
        Object Object3 = (GameLayoutRoot) Object1;

        super.onPostExecute(Object3);
        if (a.getActivity() != null) {
            if (Object3 != null && ((GameLayoutRoot) Object3).isOk() && ((GameLayoutRoot) Object3).getLayout() != null) {
                Iterator Iterator6;

                a.c();
                GameMicroFragment.a(a, ((GameLayoutRoot) Object3).getLayout());
                if (GameMicroFragment.d(a) != null) {
                    List List10;

                    a.g();
                    List10 = GameMicroFragment.d(a);
                    if (GameMicroFragment.d(a).size() <= int2)
                        int2 = 0;
                    List10.add(int2, GameMicroFragment.c(a));
                }
                GameMicroFragment.b(a, (List) new ArrayList());
                Iterator6 = GameMicroFragment.d(a).iterator();
                while (Iterator6.hasNext()) {
                    GameLayoutRoot$ModuleLayout ModuleLayout8 = (GameLayoutRoot$ModuleLayout) Iterator6.next();

                    if (ModuleLayout8.getActivity() == null || ModuleLayout8.getType() != ModuleType.ACTIVITY)
                        continue;
                    GameMicroFragment.e(a).add(ModuleLayout8.getActivity().getBannerImage());
                }
                GameMicroFragment.a(a, ((GameLayoutRoot) Object3).getPromotions());
            } else {
                a.e();
                return;
            }
        }
    }
}
