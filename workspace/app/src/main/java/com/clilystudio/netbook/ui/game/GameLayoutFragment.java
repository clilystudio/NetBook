package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class GameLayoutFragment
        extends BaseLoadingFragment {
    public static int a = 3;
    private RecyclerView b;
    private List<GameLayoutRoot$ModuleLayout> c;
    private GameLayoutFragment$LayoutAdapter d;
    private Game e;
    private BroadcastReceiver f;

    public GameLayoutFragment() {
        this.f = new G(this);
    }

    static /* synthetic */ Game a(GameLayoutFragment gameLayoutFragment, Game game) {
        gameLayoutFragment.e = game;
        return game;
    }

    static /* synthetic */ List a(GameLayoutFragment gameLayoutFragment, List list) {
        gameLayoutFragment.c = list;
        return list;
    }

    static /* synthetic */ void a(GameLayoutFragment gameLayoutFragment) {
        gameLayoutFragment.h();
    }

    static /* synthetic */ Game b(GameLayoutFragment gameLayoutFragment) {
        return gameLayoutFragment.e;
    }

    static /* synthetic */ List c(GameLayoutFragment gameLayoutFragment) {
        return gameLayoutFragment.c;
    }

    public static GameLayoutRoot$ModuleLayout g() {
        String[] arrstring = new String[]{"\u76d7\u5893\u82f1\u96c4", "\u53eb\u6211\u6076\u9b54\u5927\u4eba", "\u5973\u795e\u51b2\u6211\u6765"};
        int[] arrn = new int[]{2130837581, 2130837582, 2130837583};
        String[] arrstring2 = new String[]{"mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWRhb211eWluZ3hpYW9uZyZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU=", "wge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWppYW93b2Vtb2RhcmVuJnJlc291cmNlX3R5cGU9NCZnYW1lbGlzdF90eXBlPXNpbmdsZV9nYW1lX3NldHRpbmcmZnJvbT1zaW5nbGVfZ2FtZQ==", "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPW52c2hlbmNob25nd2xhaSZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU="};
        GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = new GameLayoutRoot$ModuleLayout();
        gameLayoutRoot$ModuleLayout.setModule("aoyou");
        gameLayoutRoot$ModuleLayout.setTitle("H5\u6e38\u620f\u4e13\u533a");
        GameGroupItem gameGroupItem = new GameGroupItem();
        gameGroupItem.setName("H5\u6e38\u620f\u4e13\u533a");
        ArrayList<Game> arrayList = new ArrayList<Game>();
        for (int i = 0; i < a; ++i) {
            Game game = new Game();
            game.setName(arrstring[i]);
            game.setIconId(arrn[i]);
            game.setAndroidLink(arrstring2[i]);
            arrayList.add(game);
        }
        gameGroupItem.setGames(arrayList);
        gameLayoutRoot$ModuleLayout.setGameGroup(gameGroupItem);
        return gameLayoutRoot$ModuleLayout;
    }

    private void h() {
        if (this.c == null) {
            return;
        }
        for (GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout : this.c) {
            if (gameLayoutRoot$ModuleLayout.getType() != ModuleType.GAME_GROUP) continue;
            ArrayList<Game> arrayList = new ArrayList<Game>(gameLayoutRoot$ModuleLayout.getGameGroup().getGames());
            if (this.e != null) {
                arrayList.add(this.e);
            }
            s.a((Activity) this.getActivity(), arrayList);
        }
        this.d.b();
    }

    @Override
    protected final int a() {
        return 2130903102;
    }

    @Override
    protected final void b() {
        this.f();
        new H(this, 0).b(new String[0]);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.b.setLayoutManager(new LinearLayoutManager(this.getActivity()));
        this.d = new GameLayoutFragment$LayoutAdapter(this);
        this.b.setAdapter(this.d);
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.getActivity().unregisterReceiver(this.f);
        b.b("game_layout");
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getActivity().registerReceiver(this.f, new IntentFilter("update_game_item_status"));
        this.h();
        b.a("game_layout");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = (RecyclerView) view.findViewById(2131493133);
    }
}
