package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGetButton;

final class t implements AdapterView$OnItemClickListener {

    private GameGiftFragment a;

    t(GameGiftFragment GameGiftFragment1) {
        a = GameGiftFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        int int6 = int3 - GameGiftFragment.a(a).getHeaderViewsCount();

        if (int6 >= 0 && int6 < GameGiftFragment.b(a).size()) {
            GameGiftGroup GameGiftGroup7 = (GameGiftGroup) GameGiftFragment.b(a).get(int6);

            if (GameGiftGroup7.getType() == 0) {
                Intent Intent14 = GameDetailActivity.a((Context) a.getActivity(), GameGiftGroup7.getGame().get_id());

                a.startActivity(Intent14);
            } else if (GameGiftGroup7.getType() == 1) {
                int int8 = GameGiftGroup7.getGame().getDownloadStatus();

                if (int8 != 1 && int8 != 2 && int8 != 8 && int8 != 32) {
                    GameGiftFragment GameGiftFragment9 = a;
                    GiftGame GiftGame10 = GameGiftGroup7.getGame();
                    View View11 = View.inflate((Context) GameGiftFragment9.getActivity(), 2130903194, null);
                    com.clilystudio.netbook.view.a a12;
                    GiftGameGetButton GiftGameGetButton13;

                    ((SmartImageView) View11.findViewById(2131493394)).setImageUrl(GiftGame10.icon);
                    ((TextView) View11.findViewById(2131493397)).setText((CharSequence) new StringBuilder("\u6709 ").append(GiftGame10.followers).append(" \u4E2A\u5C0F\u4F19\u4F34\u6B63\u5728\u73A9").toString());
                    ((TextView) View11.findViewById(2131493395)).setText((CharSequence) GiftGame10.getName());
                    ((TextView) View11.findViewById(2131493396)).setText((CharSequence) com.clilystudio.netbook.hpay100.a.a.c(GiftGame10.androidSize));
                    a12 = new com.clilystudio.netbook.view.a((Context) GameGiftFragment9.getActivity());
                    ao.a((Activity) GameGiftFragment9.getActivity(), GiftGame10);
                    GiftGameGetButton13 = (GiftGameGetButton) View11.findViewById(2131493398);
                    GiftGameGetButton13.setGame(GiftGame10);
                    GiftGameGetButton13.a(GiftGame10.getDownloadStatus());
                    GiftGameGetButton13.setBottomDialog(a12);
                    a12.a(View11).show();
                    return;
                }
            }
        }
    }
}
