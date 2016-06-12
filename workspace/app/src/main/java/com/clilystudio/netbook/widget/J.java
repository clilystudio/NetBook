package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.GameGiftResponse;
import com.clilystudio.netbook.util.e;

final class J extends com.clilystudio.netbook.a.c {

    private GameGiftItemView a;

    public J(GameGiftItemView GameGiftItemView1, Activity Activity2) {
        super(Activity2);
        a = GameGiftItemView1;
    }

    private static transient GameGiftResponse a(String[] String_1darray1) {
        GameGiftResponse GameGiftResponse4;

        try {
            com.clilystudio.netbook.api.b.a();
            GameGiftResponse4 = com.clilystudio.netbook.api.b.b().K(String_1darray1[0], String_1darray1[1]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return GameGiftResponse4;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        GameGiftResponse GameGiftResponse2 = (GameGiftResponse) Object1;

        if (GameGiftResponse2 != null) {
            if (GameGiftResponse2.isOk()) {
                String String3 = GameGiftResponse2.giftCode.code;

                GameGiftRecord.create(GameGiftItemView.d(a).getUser().getId(), GameGiftItemView.c(a)._id, String3);
                GameGiftItemView.a(a, String3);
                e.a((Activity) a.getContext(), "\u9886\u53D6\u6210\u529F");
                GameGiftItemView.b(a, String3);
            } else
                e.a((Activity) a.getContext(), GameGiftResponse2.getMsg());
        } else
            e.a((Activity) a.getContext(), "\u9886\u53D6\u5931\u8D25");
    }
}
