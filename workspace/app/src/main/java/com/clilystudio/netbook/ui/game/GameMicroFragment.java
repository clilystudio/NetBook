package com.clilystudio.netbook.ui.game;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class GameMicroFragment extends BaseLoadingFragment {
    Timer a;
    TimerTask b;
    int c;
    private RecyclerView d;
    private List<GameLayoutRoot$ModuleLayout> e;
    private GameLayoutRoot$ModuleLayout f;
    private GameMicroFragment$LayoutAdapter g;
    private Game[] h;
    private List<String> i;

    static /* synthetic */ List a(GameMicroFragment gameMicroFragment, List list) {
        gameMicroFragment.e = list;
        return list;
    }

    static /* synthetic */ Game[] a(GameMicroFragment gameMicroFragment) {
        return gameMicroFragment.h;
    }

    static /* synthetic */ Game[] a(GameMicroFragment gameMicroFragment, Game[] arrgame) {
        gameMicroFragment.h = arrgame;
        return arrgame;
    }

    static /* synthetic */ int b(GameMicroFragment gameMicroFragment) {
        return gameMicroFragment.h();
    }

    static /* synthetic */ List b(GameMicroFragment gameMicroFragment, List list) {
        gameMicroFragment.i = list;
        return list;
    }

    static /* synthetic */ GameLayoutRoot$ModuleLayout c(GameMicroFragment gameMicroFragment) {
        return gameMicroFragment.f;
    }

    static /* synthetic */ List d(GameMicroFragment gameMicroFragment) {
        return gameMicroFragment.e;
    }

    static /* synthetic */ List e(GameMicroFragment gameMicroFragment) {
        return gameMicroFragment.i;
    }

    private int h() {
        if (this.f == null || this.f.getGameGroup() == null && this.f.getGameGroup().getGames() == null) {
            return 0;
        }
        return this.f.getGameGroup().getGames().size();
    }

    @Override
    protected final int a() {
        return 2130903102;
    }

    @Override
    protected final void b() {
        this.f();
        new W(this, 0).b(new String[0]);
    }

    public final void g() {
        if (this.f == null) {
            this.f = new GameLayoutRoot$ModuleLayout();
        }
        this.f.setModule("local");
        this.f.setTitle("\u6211\u73a9\u8fc7\u7684");
        GameGroupItem gameGroupItem = new GameGroupItem();
        gameGroupItem.setName("\u6211\u73a9\u8fc7\u7684");
        ArrayList arrayList = (ArrayList) a.k(c.h, "played_game.txt");
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        gameGroupItem.setGames(arrayList);
        this.f.setGameGroup(gameGroupItem);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.d.setLayoutManager(new LinearLayoutManager(this.getActivity()));
        this.g = new GameMicroFragment$LayoutAdapter(this);
        this.d.setAdapter(this.g);
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        b.b("game_micro_layout");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onResume() {
        super.onResume();
        if (this.g != null) {
            this.g();
            if (this.h() == 1) {
                this.d.setAdapter(this.g);
            } else {
                this.g.b();
            }
        }
        b.a("game_micro_layout");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.d = (RecyclerView) view.findViewById(2131493133);
    }
}
