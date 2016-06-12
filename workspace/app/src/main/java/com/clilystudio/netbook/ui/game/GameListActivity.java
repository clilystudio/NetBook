package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.model.GameCat;
import com.clilystudio.netbook.ui.BaseLoadingActivity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class GameListActivity extends BaseLoadingActivity {

    private Q a;
    private boolean e;
    private List b = new ArrayList();
    private GameCat c = null;
    private BroadcastReceiver f = new P(this);
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, GameCat GameCat2) {
    }

    static List a(GameListActivity GameListActivity1) {
        return GameListActivity1.b;
    }

    static void a(GameListActivity GameListActivity1, List List2) {
        GameListActivity1.a(List2);
    }

    static boolean b(GameListActivity GameListActivity1) {
        return GameListActivity1.e;
    }

    static void c(GameListActivity GameListActivity1) {
        GameListActivity1.j();
    }

    private void a(List List1) {
        b = List1;
        a.a((Collection) List1);
        j();
    }

    private void j() {
        if (!e && b != null && b.size() > 0) {
            s.a((Activity) this, b);
            a.a((Collection) b);
        }
    }

    protected final void b() {
        i();
        if (c != null) {
            f();
            a(Arrays.asList(c.getGames()));
        } else
            new S(this, (byte) 0).b(new String[0]);
    }

    protected void onCreate(Bundle Bundle1) {
        Intent Intent2;
        String String3;
        ListView ListView4;

        super.onCreate(Bundle1);
        a(2130903321);
        Intent2 = getIntent();
        e = Intent2.getBooleanExtra("micro_game", false);
        if (Intent2.hasExtra("game_cat_list")) {
            c = (GameCat) getIntent().getSerializableExtra("game_cat_list");
            String3 = c.get_id();
        } else
            String3 = Intent2.getStringExtra("game_list_title");
        b(String3);
        ListView4 = (ListView) findViewById(2131493135);
        ListView4.setDividerHeight(0);
        ListView4.setOnItemClickListener((AdapterView$OnItemClickListener) new O(this));
        a = new Q(this, getLayoutInflater());
        ListView4.setAdapter((ListAdapter) a);
        b();
    }

    public void onPause() {
        super.onPause();
        unregisterReceiver(f);
    }

    public void onResume() {
        super.onResume();
        registerReceiver(f, new IntentFilter("update_game_item_status"));
        j();
    }
}
