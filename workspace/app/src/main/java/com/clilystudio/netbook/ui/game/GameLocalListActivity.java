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
    public class GameLocalListActivity$GameViewHolder extends ay {
        @InjectView(value = 2131493689)
        View mContainer;
        @InjectView(value = 2131493694)
        TextView mCount;
        @InjectView(value = 2131493690)
        SmartImageView mIcon;
        @InjectView(value = 2131493693)
        TextView mIntro;
        @InjectView(value = 2131493692)
        TextView mName;
        @InjectView(value = 2131493691)
        Button mPlay;

        public GameLocalListActivity$GameViewHolder(GameLocalListActivity gameLocalListActivity, View view) {
            this.mContainer = view.findViewById(2131493689);
            this.mIcon = (SmartImageView)view. findViewById(2131493690);
            this.mName = (TextView) view. findViewById(2131493692);
            this.mCount = (TextView)view.  findViewById(2131493694);
            this.mIntro = (TextView)view.  findViewById(2131493693);
            this.mPlay = (Button)view.  findViewById(2131493691);
        }
    }

}
