package com.clilystudio.netbook.ui.game;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SmartImageView;

import java.util.ArrayList;
import java.util.List;

public class GameLocalListActivity extends BaseActivity {
    private RecyclerView a;
    private T b;
    private List<Game> c;

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903102);
        b("我玩过的游戏");
        this.c = ((List) a.k(c.h, "played_game.txt"));
        if (this.c == null)
            this.c = new ArrayList();
        this.a = ((RecyclerView) findViewById(2131493133));
        this.a.setLayoutManager(new LinearLayoutManager(this));
        this.b = new T(this, LayoutInflater.from(this));
        this.a.setAdapter(this.b);
    }
    public class GameViewHolder extends ay {

        @InjectView(2131493689)
        View mContainer;

        @InjectView(2131493694)
        TextView mCount;

        @InjectView(2131493690)
        SmartImageView mIcon;

        @InjectView(2131493693)
        TextView mIntro;

        @InjectView(2131493692)
        TextView mName;

        @InjectView(2131493691)
        Button mPlay;

        public GameViewHolder(GameLocalListActivity paramGameLocalListActivity, View paramView) {
            super(paramView);
            ButterKnife.inject(this, paramView);
        }
    }
}

