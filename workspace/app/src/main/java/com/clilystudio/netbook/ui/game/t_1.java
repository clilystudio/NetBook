package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGetButton;

final class t implements AdapterView.OnItemClickListener {
    private /* synthetic */ GameGiftFragment a;

    t(GameGiftFragment gameGiftFragment) {
        this.a = gameGiftFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l) {
        int n3 = n2 - GameGiftFragment.a(this.a).getHeaderViewsCount();
        if (n3 < 0 || n3 >= GameGiftFragment.b(this.a).size()) return;
        {
            GameGiftGroup gameGiftGroup = (GameGiftGroup) GameGiftFragment.b(this.a).get(n3);
            if (gameGiftGroup.getType() == 0) {
                Intent intent = GameDetailActivity.a(this.a.getActivity(), gameGiftGroup.getGame().get_id());
                this.a.startActivity(intent);
                return;
            } else {
                int n4;
                if (gameGiftGroup.getType() != 1 || (n4 = gameGiftGroup.getGame().getDownloadStatus()) == 1 || n4 == 2 || n4 == 8 || n4 == 32) return;
                {
                    GameGiftFragment gameGiftFragment = this.a;
                    GiftGame giftGame = gameGiftGroup.getGame();
                    View view2 = View.inflate(gameGiftFragment.getActivity(), 2130903194, null);
                    ((SmartImageView) view2.findViewById(2131493394)).setImageUrl(giftGame.icon);
                    ((TextView) view2.findViewById(2131493397)).setText("\u6709 " + giftGame.followers + " \u4e2a\u5c0f\u4f19\u4f34\u6b63\u5728\u73a9");
                    ((TextView) view2.findViewById(2131493395)).setText(giftGame.getName());
                    ((TextView) view2.findViewById(2131493396)).setText(a.c(giftGame.androidSize));
                    com.clilystudio.netbook.view.a a2 = new com.clilystudio.netbook.view.a(gameGiftFragment.getActivity());
                    ao.a((Activity) gameGiftFragment.getActivity(), giftGame);
                    GiftGameGetButton giftGameGetButton = (GiftGameGetButton) view2.findViewById(2131493398);
                    giftGameGetButton.setGame(giftGame);
                    giftGameGetButton.a(giftGame.getDownloadStatus());
                    giftGameGetButton.setBottomDialog(a2);
                    a2.a(view2).show();
                    return;
                }
            }
        }
    }
}
