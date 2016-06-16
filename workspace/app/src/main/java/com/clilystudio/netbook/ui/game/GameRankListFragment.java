package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class GameRankListFragment extends BaseLoadingFragment {
    private ScrollLoadListView a;
    private View b;
    private List<Game> c = new ArrayList<Game>();
    private al d;
    private am e;
    private BroadcastReceiver f;
    private av g;

    public GameRankListFragment() {
        this.f = new aj(this);
        this.g = new ak(this);
    }

    static /* synthetic */ am a(GameRankListFragment gameRankListFragment, am am2) {
        gameRankListFragment.e = am2;
        return am2;
    }

    static /* synthetic */ ScrollLoadListView a(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.a;
    }

    static /* synthetic */ List b(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.c;
    }

    static /* synthetic */ void c(GameRankListFragment gameRankListFragment) {
        gameRankListFragment.g();
    }

    static /* synthetic */ View d(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.b;
    }

    static /* synthetic */ al e(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.d;
    }

    static /* synthetic */ av f(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.g;
    }

    static /* synthetic */ am g(GameRankListFragment gameRankListFragment) {
        return gameRankListFragment.e;
    }

    private void g() {
        if (!this.c.isEmpty()) {
            s.a((Activity) this.getActivity(), this.c);
            this.d.notifyDataSetChanged();
        }
    }

    @Override
    protected final int a() {
        return R.layout.scroll_listview;
    }

    @Override
    protected final void b() {
        this.f();
        this.c.clear();
        this.e = new am(this, 0);
        this.e.b(new String[0]);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.b = LayoutInflater.from(this.getActivity()).inflate(R.layout.loading_item, null);
        this.b.setVisibility(View.GONE);
        a.a((Context) this.getActivity(), this.a);
        this.a.addFooterView(this.b);
        this.a.setDividerHeight(0);
        this.d = new al(this, LayoutInflater.from(this.getActivity()));
        this.a.setAdapter(this.d);
        this.a.setOnItemClickListener(new ai(this));
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.getActivity().unregisterReceiver(this.f);
        b.a("game_rank_list");
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getActivity().registerReceiver(this.f, new IntentFilter("update_game_item_status"));
        this.g();
        b.a("game_rank_list");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a = (ScrollLoadListView) view.findViewById(R.id.content_scroll_list);
    }
}
