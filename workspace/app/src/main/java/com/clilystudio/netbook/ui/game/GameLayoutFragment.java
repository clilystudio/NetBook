package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GameLayoutFragment extends BaseLoadingFragment {
    public static int a = 3;
    private RecyclerView b;
    private List<GameLayoutRoot.ModuleLayout> c;
    private GameLayoutFragment.LayoutAdapter d;
    private Game e;
    private BroadcastReceiver f = new G(this);

    public static GameLayoutRoot.ModuleLayout g() {
        int i = 0;
        String[] arrayOfString1 = {"盗墓英雄", "叫我恶魔大人", "女神冲我来"};
        int[] arrayOfInt = {2130837581, 2130837582, 2130837583};
        String[] arrayOfString2 = {"mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWRhb211eWluZ3hpYW9uZyZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU=", "wge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWppYW93b2Vtb2RhcmVuJnJlc291cmNlX3R5cGU9NCZnYW1lbGlzdF90eXBlPXNpbmdsZV9nYW1lX3NldHRpbmcmZnJvbT1zaW5nbGVfZ2FtZQ==", "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPW52c2hlbmNob25nd2xhaSZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU="};
        GameLayoutRoot.ModuleLayout localModuleLayout = new GameLayoutRoot.ModuleLayout();
        localModuleLayout.setModule("aoyou");
        localModuleLayout.setTitle("H5游戏专区");
        GameGroupItem localGameGroupItem = new GameGroupItem();
        localGameGroupItem.setName("H5游戏专区");
        ArrayList localArrayList = new ArrayList();
        while (i < a) {
            Game localGame = new Game();
            localGame.setName(arrayOfString1[i]);
            localGame.setIconId(arrayOfInt[i]);
            localGame.setAndroidLink(arrayOfString2[i]);
            localArrayList.add(localGame);
            i++;
        }
        localGameGroupItem.setGames(localArrayList);
        localModuleLayout.setGameGroup(localGameGroupItem);
        return localModuleLayout;
    }

    private void h() {
        if (this.c == null)
            return;
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext()) {
            GameLayoutRoot.ModuleLayout localModuleLayout = (GameLayoutRoot.ModuleLayout) localIterator.next();
            if (localModuleLayout.getType() != ModuleType.GAME_GROUP)
                continue;
            ArrayList localArrayList = new ArrayList(localModuleLayout.getGameGroup().getGames());
            if (this.e != null)
                localArrayList.add(this.e);
            s.a(getActivity(), localArrayList);
        }
        this.d.b();
    }

    protected final int a() {
        return 2130903102;
    }

    protected final void b() {
        f();
        new H(this, 0).b(new String[0]);
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        this.b.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.d = new GameLayoutFragment.LayoutAdapter(this);
        this.b.setAdapter(this.d);
        b();
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.f);
        b.b("game_layout");
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.f, new IntentFilter("update_game_item_status"));
        h();
        b.a("game_layout");
    }

    public void onViewCreated(View paramView, Bundle paramBundle) {
        super.onViewCreated(paramView, paramBundle);
        this.b = ((RecyclerView) paramView.findViewById(2131493133));
    }
}

