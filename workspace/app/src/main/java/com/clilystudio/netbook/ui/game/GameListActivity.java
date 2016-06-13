package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.widget.ListView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.ui.BaseLoadingActivity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GameListActivity
        extends BaseLoadingActivity {
    private Q a;
    private List<Game> b = new ArrayList<Game>();
    private GameCat c = null;
    private boolean e;
    private BroadcastReceiver f;

    public GameListActivity() {
        this.f = new P(this);
    }

    public static Intent a(Context context, GameCat gameCat) {
        return new d().a(context, GameListActivity.class).a("game_cat_list", gameCat).a();
    }

    static /* synthetic */ List a(GameListActivity gameListActivity) {
        return gameListActivity.b;
    }

    static /* synthetic */ void a(GameListActivity gameListActivity, List list) {
        gameListActivity.a(list);
    }

    static /* synthetic */ boolean b(GameListActivity gameListActivity) {
        return gameListActivity.e;
    }

    static /* synthetic */ void c(GameListActivity gameListActivity) {
        gameListActivity.j();
    }

    private void a(List<Game> list) {
        this.b = list;
        this.a.a(list);
        this.j();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void j() {
        if (this.e || this.b == null || this.b.size() <= 0) {
            return;
        }
        s.a((Activity) this, this.b);
        this.a.a(this.b);
    }

    @Override
    protected final void b() {
        this.i();
        if (this.c != null) {
            this.f();
            this.a(Arrays.asList(this.c.getGames()));
            return;
        }
        new S(this, 0).b(new String[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        this.a(2130903321);
        Intent intent = this.getIntent();
        this.e = intent.getBooleanExtra("micro_game", false);
        if (intent.hasExtra("game_cat_list")) {
            this.c = (GameCat) this.getIntent().getSerializableExtra("game_cat_list");
            string = this.c.get_id();
        } else {
            string = intent.getStringExtra("game_list_title");
        }
        this.b(string);
        ListView listView = (ListView) this.findViewById(2131493135);
        listView.setDividerHeight(0);
        listView.setOnItemClickListener(new O(this));
        this.a = new Q(this, this.getLayoutInflater());
        listView.setAdapter(this.a);
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.unregisterReceiver(this.f);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.registerReceiver(this.f, new IntentFilter("update_game_item_status"));
        this.j();
    }
}
