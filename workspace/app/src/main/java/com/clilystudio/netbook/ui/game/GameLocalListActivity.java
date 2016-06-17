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

    static /* synthetic */ List a(GameLocalListActivity gameLocalListActivity) {
        return gameLocalListActivity.c;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_game_layout);
        this.b("\u6211\u73a9\u8fc7\u7684\u6e38\u620f");
        this.c = (List) a.k(c.h, "played_game.txt");
        if (this.c == null) {
            this.c = new ArrayList<Game>();
        }
        this.a = (RecyclerView) this.findViewById(R.id.recycler);
        this.a.setLayoutManager(new LinearLayoutManager(this));
        this.b = new T(this, LayoutInflater.from(this));
        this.a.setAdapter(this.b);
    }
    public class GameViewHolder extends ay {
        View mContainer;
        TextView mCount;
        SmartImageView mIcon;
        TextView mIntro;
        TextView mName;
        Button mPlay;

        public GameViewHolder(GameLocalListActivity gameLocalListActivity, View view) {
            this.mContainer = view.findViewById(R.id.micro_game_item_container);
            this.mIcon = (SmartImageView)view. findViewById(R.id.micro_game_item_icon);
            this.mName = (TextView) view. findViewById(R.id.micro_game_item_name);
            this.mCount = (TextView)view.  findViewById(R.id.micro_game_item_count);
            this.mIntro = (TextView)view.  findViewById(R.id.micro_game_item_intro);
            this.mPlay = (Button)view.  findViewById(R.id.micro_game_item_play);
        }
    }

}
