package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.GameGiftResponse;
import com.clilystudio.netbook.util.e;

final class Y
        extends c<String, GameGiftResponse> {
    private /* synthetic */ GiftGameGiftButton a;

    public Y(GiftGameGiftButton giftGameGiftButton, Activity activity) {
        this.a = giftGameGiftButton;
        super(activity);
    }

    private static /* varargs */ GameGiftResponse a(String... arrstring) {
        try {
            b.a();
            GameGiftResponse gameGiftResponse = b.b().K(arrstring[0], arrstring[1]);
            return gameGiftResponse;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        GameGiftResponse gameGiftResponse = (GameGiftResponse) object;
        if (gameGiftResponse != null) {
            if (gameGiftResponse.isOk()) {
                String string = gameGiftResponse.giftCode.code;
                GameGiftRecord.create(GiftGameGiftButton.c(this.a).getUser().getId(), GiftGameGiftButton.d((GiftGameGiftButton) this.a)._id, string);
                GiftGameGiftButton.a(this.a, string);
                e.a((Activity) this.a.getContext(), "\u9886\u53d6\u6210\u529f");
                GiftGameGiftButton.b(this.a, string);
                return;
            }
            e.a((Activity) this.a.getContext(), gameGiftResponse.getMsg());
            return;
        }
        e.a((Activity) this.a.getContext(), "\u9886\u53d6\u5931\u8d25");
    }
}
