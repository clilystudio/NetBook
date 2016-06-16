package com.clilystudio.netbook.ui.game;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.GameGiftResponse;
import com.clilystudio.netbook.util.e;

final class D extends c<String, GameGiftResponse> {
    final /* synthetic */ GameGiftListActivity a;

    public D(GameGiftListActivity gameGiftListActivity, Activity activity) {
        this.a = gameGiftListActivity;
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
                GameGiftRecord.create(GameGiftListActivity.d(this.a).getUser().getId(), GameGiftListActivity.c((GameGiftListActivity) this.a)._id, string);
                GameGiftListActivity.a(this.a, string);
                e.a((Activity) this.a, (String) "\u9886\u53d6\u6210\u529f");
                GameGiftListActivity.e(this.a).setText("\u67e5\u770b");
                GameGiftListActivity.e(this.a).setBackgroundResource(R.drawable.green_round_button);
                GameGiftListActivity.e(this.a).setOnClickListener(new E(this, string));
                GameGiftListActivity.f(this.a).setOnClickListener(new F(this, string));
                return;
            }
            e.a((Activity) this.a, (String) gameGiftResponse.getMsg());
            return;
        }
        e.a((Activity) this.a, (String) "\u9886\u53d6\u5931\u8d25");
    }
}
