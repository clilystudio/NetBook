package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;

import java.util.ArrayList;
import java.util.List;

public class GameRankListFragment extends BaseLoadingFragment {

    private ScrollLoadListView a;
    private View b;
    private al d;
    private am e;
    private List c = new ArrayList();
    private BroadcastReceiver f = new aj(this);
    private av g = new ak(this);

    static am a(GameRankListFragment GameRankListFragment1, am am2) {
        GameRankListFragment1.e = am2;
        return am2;
    }

    static ScrollLoadListView a(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.a;
    }

    static List b(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.c;
    }

    static void c(GameRankListFragment GameRankListFragment1) {
        GameRankListFragment1.g();
    }

    static View d(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.b;
    }

    static al e(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.d;
    }

    static av f(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.g;
    }

    static am g(GameRankListFragment GameRankListFragment1) {
        return GameRankListFragment1.e;
    }

    private void g() {
        if (!c.isEmpty()) {
            s.a((Activity) getActivity(), c);
            d.notifyDataSetChanged();
        }
    }

    protected final int a() {
        return 2130903386;
    }

    protected final void b() {
        f();
        c.clear();
        e = new am(this, (byte) 0);
        e.b(new String[0]);
    }

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        b = LayoutInflater.from((Context) getActivity()).inflate(2130903325, null);
        b.setVisibility(8);
        com.clilystudio.netbook.hpay100.a.a.a((Context) getActivity(), (ListView) a);
        a.addFooterView(b);
        a.setDividerHeight(0);
        d = new al(this, LayoutInflater.from((Context) getActivity()));
        a.setAdapter((ListAdapter) d);
        a.setOnItemClickListener((AdapterView$OnItemClickListener) new ai(this));
        b();
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(f);
        com.clilystudio.netbook.umeng.a.b.a("game_rank_list");
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(f, new IntentFilter("update_game_item_status"));
        g();
        com.clilystudio.netbook.umeng.a.b.a("game_rank_list");
    }

    public void onViewCreated(View View1, Bundle Bundle2) {
        super.onViewCreated(View1, Bundle2);
        a = (ScrollLoadListView) View1.findViewById(2131493981);
    }
}
