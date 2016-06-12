package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameRoot;

final class j extends e {

    private ChargeActivity a;

    j(ChargeActivity ChargeActivity1, byte byte2) {
        this(ChargeActivity1);
    }

    private j(ChargeActivity ChargeActivity1) {
        a = ChargeActivity1;
    }

    private static transient GameRoot a() {
        GameRoot GameRoot3;

        try {
            com.clilystudio.netbook.api.b.a();
            GameRoot3 = com.clilystudio.netbook.api.b.b().p();
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return GameRoot3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (GameRoot) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((GameRoot) Object2).isOk()) {
            Game[] Game_1darray3 = ((GameRoot) Object2).getGames();

            ChargeActivity.b(a).a(Game_1darray3);
            if (Game_1darray3.length > 0)
                a.f();
            else
                a.g();
        } else
            a.h();
    }
}
