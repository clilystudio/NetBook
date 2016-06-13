package com.clilystudio.netbook.ui.game;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.ArrayList;
import java.util.List;

public class GameLocalListActivity
        extends BaseActivity {
    private RecyclerView a;
    private T b;
    private List<Game> c;

    static /* synthetic */ List a(GameLocalListActivity gameLocalListActivity) {
        return gameLocalListActivity.c;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903102);
        this.b("\u6211\u73a9\u8fc7\u7684\u6e38\u620f");
        this.c = (List) a.k(c.h, "played_game.txt");
        if (this.c == null) {
            this.c = new ArrayList<Game>();
        }
        this.a = (RecyclerView) this.findViewById(2131493133);
        this.a.setLayoutManager(new LinearLayoutManager(this));
        this.b = new T(this, LayoutInflater.from(this));
        this.a.setAdapter(this.b);
    }
}
