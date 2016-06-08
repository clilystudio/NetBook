package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGetButton;

final class t
        implements AdapterView.OnItemClickListener {
    t(GameGiftFragment paramGameGiftFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - GameGiftFragment.a(this.a).getHeaderViewsCount();
        GameGiftGroup localGameGiftGroup;
        if ((i >= 0) && (i < GameGiftFragment.b(this.a).size())) {
            localGameGiftGroup = (GameGiftGroup) GameGiftFragment.b(this.a).get(i);
            if (localGameGiftGroup.getType() != 0)
                break label93;
            Intent localIntent = GameDetailActivity.a(this.a.getActivity(), localGameGiftGroup.getGame().get_id());
            this.a.startActivity(localIntent);
        }
        label93:
        int j;
        do {
            do
                return;
            while (localGameGiftGroup.getType() != 1);
            j = localGameGiftGroup.getGame().getDownloadStatus();
        }
        while ((j == 1) || (j == 2) || (j == 8) || (j == 32));
        GameGiftFragment localGameGiftFragment = this.a;
        GiftGame localGiftGame = localGameGiftGroup.getGame();
        View localView = View.inflate(localGameGiftFragment.getActivity(), 2130903194, null);
        ((SmartImageView) localView.findViewById(2131493394)).setImageUrl(localGiftGame.icon);
        ((TextView) localView.findViewById(2131493397)).setText("有 " + localGiftGame.followers + " 个小伙伴正在玩");
        ((TextView) localView.findViewById(2131493395)).setText(localGiftGame.getName());
        ((TextView) localView.findViewById(2131493396)).setText(com.arcsoft.hpay100.a.a.c(localGiftGame.androidSize));
        com.clilystudio.netbook.view.a locala = new com.clilystudio.netbook.view.a(localGameGiftFragment.getActivity());
        ao.a(localGameGiftFragment.getActivity(), localGiftGame);
        GiftGameGetButton localGiftGameGetButton = (GiftGameGetButton) localView.findViewById(2131493398);
        localGiftGameGetButton.setGame(localGiftGame);
        localGiftGameGetButton.a(localGiftGame.getDownloadStatus());
        localGiftGameGetButton.setBottomDialog(locala);
        locala.a(localView).show();
    }
}

