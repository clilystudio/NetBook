package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.*;
import com.clilystudio.netbook.model.Game;

final class T extends ah<GameLocalListActivity.GameViewHolder> {
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
        return new GameLocalListActivity.GameViewHolder(this.a, view);
    }

    public final /* synthetic */ void a(ay ay2, int n) {
        GameLocalListActivity.GameViewHolder viewHolder = (GameLocalListActivity.GameViewHolder) ay2;
        if (n < GameLocalListActivity.a(this.a).size()) {
            final Game game = (Game) GameLocalListActivity.a(this.a).get(n);
            viewHolder.mIcon.setImageUrl(game.getIcon(), R.drawable.cover_default);
            viewHolder.mName.setText(game.getName());
            viewHolder.mIntro.setText(game.getShortIntro());
            viewHolder.mCount.setText("" + game.getFollowers() + "\u4eba\u5728\u73a9");
            viewHolder.mPlay.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    com.clilystudio.netbook.am.b(T.this.a, game);
                }
            });
            viewHolder.mContainer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    T.this.a.startActivity(GameDetailActivity.a(T.this.a, game.get_id(), true, true));
                }
            });
        }
    }
}
