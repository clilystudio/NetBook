package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.Game;

final class T extends ah {

    GameLocalListActivity a;     // final access specifier removed
    private LayoutInflater b;
    public T(GameLocalListActivity GameLocalListActivity1, LayoutInflater LayoutInflater2) {
        a = GameLocalListActivity1;
        b = LayoutInflater2;
    }

    public final int a() {
        return GameLocalListActivity.a(a).size();
    }

    public final ay a(ViewGroup ViewGroup1, int int2) {
        View View3 = b.inflate(2130903286, ViewGroup1, false);

        return (ay) new GameLocalListActivity$GameViewHolder(a, View3);
    }

    public final void a(ay ay1, int int2) {
        GameLocalListActivity$GameViewHolder GameViewHolder3 = (GameLocalListActivity$GameViewHolder) ay1;

        if (int2 < GameLocalListActivity.a(a).size()) {
            Game Game4 = (Game) GameLocalListActivity.a(a).get(int2);

            GameViewHolder3.mIcon.setImageUrl(Game4.getIcon(), 2130837766);
            GameViewHolder3.mName.setText((CharSequence) Game4.getName());
            GameViewHolder3.mIntro.setText((CharSequence) Game4.getShortIntro());
            GameViewHolder3.mCount.setText((CharSequence) new StringBuilder().append(Game4.getFollowers()).append("\u4EBA\u5728\u73A9").toString());
            GameViewHolder3.mPlay.setOnClickListener((View$OnClickListener) new U(this, Game4));
            GameViewHolder3.mContainer.setOnClickListener((View$OnClickListener) new V(this, Game4));
        }
    }
}
