package com.clilystudio.netbook.widget;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.model.GameGiftRoot;

final class L extends e {

    private GameGiftView a;

    L(GameGiftView GameGiftView1, byte byte2) {
        this(GameGiftView1);
    }

    private L(GameGiftView GameGiftView1) {
        a = GameGiftView1;
    }

    private static transient GameGiftRoot a(String[] String_1darray1) {
        GameGiftRoot GameGiftRoot4;

        try {
            com.clilystudio.netbook.api.b.a();
            GameGiftRoot4 = com.clilystudio.netbook.api.b.b().ab(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return GameGiftRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (GameGiftRoot) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((GameGiftRoot) Object2).ok && ((GameGiftRoot) Object2).gifts != null && ((GameGiftRoot) Object2).gifts.length > 0) {
            GameGift[] GameGift_1darray3;
            int int4;
            int int5;
            int int6;

            a.findViewById(2131493478).setVisibility(0);
            a.findViewById(2131493479).setVisibility(0);
            GameGift_1darray3 = ((GameGiftRoot) Object2).gifts;
            int4 = GameGift_1darray3.length;
            if (int4 > 3) {
                GameGiftView.a(a, (GameGiftRoot) Object2);
                int4 = 3;
            }
            int5 = 2;
            int6 = 0;
            while (int6 < int4) {
                GameGift GameGift7 = GameGift_1darray3[int6];
                int int8;

                if (GameGift7.game != null) {
                    View View9 = LayoutInflater.from(a.getContext()).inflate(2130903279, (ViewGroup) a, false);

                    ((GameGiftItemView) View9.findViewById(2131493673)).a(GameGift7, GameGiftView.a(a));
                    a.addView(View9, int5);
                    int8 = int5 + 1;
                } else
                    int8 = int5;
                ++int6;
                int5 = int8;
            }
        }
    }
}
