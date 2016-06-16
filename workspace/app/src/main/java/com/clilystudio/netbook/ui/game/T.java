package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.Game;

final class T extends ah<GameLocalListActivity$GameViewHolder> {
    final /* synthetic */ GameLocalListActivity a;
    private LayoutInflater b;

    public T(GameLocalListActivity gameLocalListActivity, LayoutInflater layoutInflater) {
        this.a = gameLocalListActivity;
        this.b = layoutInflater;
    }

    public final int a() {
        return GameLocalListActivity.a(this.a).size();
    }

    public final /* synthetic */ ay a(ViewGroup viewGroup, int n) {
        View view = this.b.inflate(R.layout.list_item_micro_game, viewGroup, false);
        return new GameLocalListActivity$GameViewHolder(this.a, view);
    }

    public final /* synthetic */ void a(ay ay2, int n) {
        GameLocalListActivity$GameViewHolder gameLocalListActivity$GameViewHolder = (GameLocalListActivity$GameViewHolder) ay2;
        if (n < GameLocalListActivity.a(this.a).size()) {
            Game game = (Game) GameLocalListActivity.a(this.a).get(n);
            gameLocalListActivity$GameViewHolder.mIcon.setImageUrl(game.getIcon(), R.drawable.cover_default);
            gameLocalListActivity$GameViewHolder.mName.setText(game.getName());
            gameLocalListActivity$GameViewHolder.mIntro.setText(game.getShortIntro());
            gameLocalListActivity$GameViewHolder.mCount.setText("" + game.getFollowers() + "\u4eba\u5728\u73a9");
            gameLocalListActivity$GameViewHolder.mPlay.setOnClickListener(new U(this, game));
            gameLocalListActivity$GameViewHolder.mContainer.setOnClickListener(new V(this, game));
        }
    }
}
