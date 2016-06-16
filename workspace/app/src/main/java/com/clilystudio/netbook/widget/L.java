package com.clilystudio.netbook.widget;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.model.GameGiftRoot;

final class L extends e<String, Void, GameGiftRoot> {
    private /* synthetic */ GameGiftView a;

    private L(GameGiftView gameGiftView) {
        this.a = gameGiftView;
    }

    /* synthetic */ L(GameGiftView gameGiftView, byte by) {
        this(gameGiftView);
    }

    private static /* varargs */ GameGiftRoot a(String... arrstring) {
        try {
            b.a();
            GameGiftRoot gameGiftRoot = b.b().ab(arrstring[0]);
            return gameGiftRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return L.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        int n;
        GameGift[] arrgameGift;
        GameGiftRoot gameGiftRoot = (GameGiftRoot) object;
        super.onPostExecute(gameGiftRoot);
        if (gameGiftRoot != null && gameGiftRoot.ok && gameGiftRoot.gifts != null && gameGiftRoot.gifts.length > 0) {
            this.a.findViewById(R.id.game_gift_line_gap).setVisibility(View.VISIBLE);
            this.a.findViewById(R.id.game_gift_label).setVisibility(View.VISIBLE);
            arrgameGift = gameGiftRoot.gifts;
            n = arrgameGift.length;
            if (n > 3) {
                GameGiftView.a(this.a, gameGiftRoot);
                n = 3;
            }
        } else {
            return;
        }
        int n2 = 2;
        int n3 = 0;
        while (n3 < n) {
            int n4;
            GameGift gameGift = arrgameGift[n3];
            if (gameGift.game != null) {
                View view = LayoutInflater.from(this.a.getContext()).inflate(R.layout.list_item_game_gift, (ViewGroup) this.a, false);
                ((GameGiftItemView) view.findViewById(R.id.game_gift_item)).a(gameGift, GameGiftView.a(this.a));
                this.a.addView(view, n2);
                n4 = n2 + 1;
            } else {
                n4 = n2;
            }
            ++n3;
            n2 = n4;
        }
    }
}
