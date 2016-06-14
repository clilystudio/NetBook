package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

import com.clilystudio.netbook.adapter.GameGiftGroupAdapter;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class GameGiftFragment extends BaseLoadingFragment {
    private ListView a;
    private GameGiftGroupAdapter b;
    private List<GameGiftGroup> c;
    private BroadcastReceiver d;

    public GameGiftFragment() {
        this.d = new u(this);
    }

    static /* synthetic */ ListView a(GameGiftFragment gameGiftFragment) {
        return gameGiftFragment.a;
    }

    static /* synthetic */ List a(GameGiftFragment gameGiftFragment, List list) {
        gameGiftFragment.c = list;
        return list;
    }

    static /* synthetic */ List b(GameGiftFragment gameGiftFragment) {
        return gameGiftFragment.c;
    }

    static /* synthetic */ void c(GameGiftFragment gameGiftFragment) {
        gameGiftFragment.g();
    }

    static /* synthetic */ GameGiftGroupAdapter d(GameGiftFragment gameGiftFragment) {
        return gameGiftFragment.b;
    }

    private void g() {
        if (this.c != null) {
            ArrayList<GiftGame> arrayList = new ArrayList<GiftGame>();
            for (int i = 0; i < this.c.size(); ++i) {
                GameGiftGroup gameGiftGroup = this.c.get(i);
                if (gameGiftGroup.getType() != 0) continue;
                arrayList.add(gameGiftGroup.getGame());
            }
            ao.a((Activity) this.getActivity(), arrayList);
            this.b.notifyDataSetChanged();
        }
    }

    @Override
    protected final int a() {
        return 2130903321;
    }

    @Override
    protected final void b() {
        this.f();
        new v(this, 0).b((Object[]) new String[0]);
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a.setDividerHeight(0);
        this.b = new GameGiftGroupAdapter(this.getActivity());
        this.a.setAdapter(this.b);
        this.a.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new t(this)));
        this.b();
    }

    @Override
    public void onPause() {
        super.onPause();
        this.getActivity().unregisterReceiver(this.d);
        b.b("game_gift");
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getActivity().registerReceiver(this.d, new IntentFilter("update_game_item_status"));
        this.g();
        b.a("game_gift");
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a = (ListView) view.findViewById(2131493135);
    }
}
