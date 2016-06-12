package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.model.GameCatRoot;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

final class c extends com.clilystudio.netbook.a.e {

    private GameCatListFragment a;

    c(GameCatListFragment GameCatListFragment1, byte byte2) {
        this(GameCatListFragment1);
    }

    private c(GameCatListFragment GameCatListFragment1) {
        a = GameCatListFragment1;
    }

    private static transient List a() {
        try {
            GameCatRoot GameCatRoot3;

            com.clilystudio.netbook.api.b.a();
            GameCatRoot3 = com.clilystudio.netbook.api.b.b().r();
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (List) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            if (Object2 != null) {
                if (((List) Object2).size() > 0) {
                    a.c();
                    GameCatListFragment.b(a).a((Collection) Object2);
                } else {
                    a.d();
                    return;
                }
            } else {
                a.e();
                return;
            }
        }
    }
}
