package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.db.GameGiftRecord;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.GameGiftItemView;

final class y extends W<GameGift> {
    final /* synthetic */ GameGiftListActivity a;

    public y(GameGiftListActivity gameGiftListActivity, LayoutInflater layoutInflater) {
        this.a = gameGiftListActivity;
        super(layoutInflater, R.layout.list_item_game_gift);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void a(int var1_1, Object var2_2) {
        var3_3 = (GameGift) var2_2;
        this.a(0, var3_3.title);
        this.a(1, var3_3.description);
        GameGiftListActivity.a(this.a, (TextView) this.a(2, TextView.class));
        GameGiftListActivity.a(this.a, (View) this.a(3, GameGiftItemView.class));
        if (GameGiftListActivity.d(this.a) == null || (var9_4 = GameGiftRecord.getRecords(GameGiftListActivity.d(this.a).getUser().getId(), var3_3._id)) == null || var9_4.isEmpty())**GOTO lbl -1000
        var10_5 = var9_4.get(0);
        if (var10_5.giftId != null && var10_5.giftId.equals(var3_3._id)) {
            var8_6 = var10_5.giftCode;
        } else lbl - 1000: // 2 sources:
        {
            var8_6 = null;
        }
        if (var8_6 != null) {
            GameGiftListActivity.e(this.a).setText("\u67e5\u770b");
            GameGiftListActivity.e(this.a).setBackgroundResource(R.drawable.green_round_button);
            GameGiftListActivity.f(this.a).setOnClickListener(new z(this, var3_3, var8_6));
            GameGiftListActivity.e(this.a).setOnClickListener(new A(this, var3_3, var8_6));
            return;
        }
        ((GameGiftItemView) this.a(3, GameGiftItemView.class)).setOnClickListener(new B(this, var3_3));
        GameGiftListActivity.e(this.a).setOnClickListener(new C(this, var3_3));
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.game_gift_item_title, R.id.game_gift_item_desc, R.id.game_gift_item_btn, R.id.game_gift_item};
    }
}
