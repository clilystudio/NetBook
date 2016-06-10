package com.clilystudio.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameItemSection;
import com.clilystudio.netbook.widget.NewGameDownloadButton;

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
    final class LayoutAdapter extends ah {
        LayoutAdapter(GameLayoutFragment paramGameLayoutFragment) {
        }

        private GameLayoutRoot.ModuleLayout d(int paramInt) {
            List localList = GameLayoutFragment.c(this.a);
            if (GameLayoutFragment.b(this.a) != null)
                paramInt--;
            return (GameLayoutRoot.ModuleLayout) localList.get(paramInt);
        }

        public final int a() {
            if (GameLayoutFragment.c(this.a) != null) {
                int i = GameLayoutFragment.c(this.a).size();
                if (GameLayoutFragment.b(this.a) != null)
                    i++;
                return i;
            }
            return 0;
        }

        public final int a(int paramInt) {
            if ((GameLayoutFragment.b(this.a) != null) && (paramInt == 0))
                return 0;
            GameLayoutRoot.ModuleLayout localModuleLayout = d(paramInt);
            ModuleType localModuleType = localModuleLayout.getType();
            if (localModuleType == ModuleType.GAME_GROUP)
                return 1 + (localModuleLayout.getGameGroup().getRowCount() << 4);
            if (localModuleType == ModuleType.ACTIVITY)
                return 2;
            if (localModuleType == ModuleType.AOYOU)
                return 3;
            return -1;
        }

        public final ay a(ViewGroup paramViewGroup, int paramInt) {
            N localN = a.b(paramInt);
            LayoutInflater localLayoutInflater = LayoutInflater.from(this.a.getActivity());
            switch (localN.a()) {
                default:
                    return null;
                case 0:
                    return new GameLayoutFragment.LayoutAdapter.PromotionViewHolder(this, localLayoutInflater.inflate(2130903224, paramViewGroup, false));
                case 1:
                    GameItemSection localGameItemSection2 = (GameItemSection) localLayoutInflater.inflate(2130903246, paramViewGroup, false);
                    localGameItemSection2.a(localN.b());
                    return new M(this, localGameItemSection2);
                case 2:
                    return new K(this, localLayoutInflater.inflate(2130903244, paramViewGroup, false));
                case 3:
            }
            GameItemSection localGameItemSection1 = (GameItemSection) localLayoutInflater.inflate(2130903246, paramViewGroup, false);
            localGameItemSection1.a((2 + GameLayoutFragment.a) / 3);
            return new M(this, localGameItemSection1);
        }

        public final void a(ay paramay, int paramInt) {
            switch (a.b(a(paramInt)).a()) {
                default:
                    return;
                case 0:
                    GameLayoutFragment.LayoutAdapter.PromotionViewHolder localPromotionViewHolder = (GameLayoutFragment.LayoutAdapter.PromotionViewHolder) paramay;
                    localPromotionViewHolder.mName.setText(GameLayoutFragment.b(this.a).getName());
                    localPromotionViewHolder.mDownload.setGame(GameLayoutFragment.b(this.a));
                    localPromotionViewHolder.mDownload.a(GameLayoutFragment.b(this.a).getDownloadStatus());
                    TextView localTextView = localPromotionViewHolder.mPlayingCount;
                    Object[] arrayOfObject = new Object[1];
                    arrayOfObject[0] = Integer.valueOf(GameLayoutFragment.b(this.a).getMainPromoInfo().getPlayingCount());
                    localTextView.setText(String.format("%d人在玩", arrayOfObject));
                    localPromotionViewHolder.mDesc.setText(GameLayoutFragment.b(this.a).getMainPromoInfo().getDesc());
                    localPromotionViewHolder.mIcon.setImageUrl(GameLayoutFragment.b(this.a).getIcon());
                    localPromotionViewHolder.mIcon.setOnClickListener(new I(this));
                    return;
                case 1:
                    GameLayoutRoot.ModuleLayout localModuleLayout3 = d(paramInt);
                    ((GameItemSection) paramay.a).a(localModuleLayout3);
                    paramay.a.findViewById(2131493432).setOnClickListener(new J(this, localModuleLayout3));
                    return;
                case 2:
                    K localK = (K) paramay;
                    GameLayoutRoot.ModuleLayout localModuleLayout2 = d(paramInt);
                    SmartImageView localSmartImageView = (SmartImageView) localK.a.findViewById(2131493025);
                    GameLayoutRoot.ModuleLayout.ActivityItem localActivityItem = localModuleLayout2.getActivity();
                    localSmartImageView.setImageUrl(localActivityItem.getBannerImage());
                    localSmartImageView.setOnClickListener(new L(localK, localActivityItem));
                    return;
                case 3:
            }
            GameLayoutRoot.ModuleLayout localModuleLayout1 = d(paramInt);
            ((GameItemSection) paramay.a).b(localModuleLayout1);
            paramay.a.findViewById(2131493432).setVisibility(8);
        }
        public class PromotionViewHolder extends ay {

            @InjectView(2131493481)
            TextView mDesc;

            @InjectView(2131492916)
            NewGameDownloadButton mDownload;

            @InjectView(2131493028)
            SmartImageView mIcon;

            @InjectView(2131492928)
            TextView mName;

            @InjectView(2131493482)
            TextView mPlayingCount;

            public PromotionViewHolder(GameLayoutFragment.LayoutAdapter paramLayoutAdapter, View paramView) {
                super(paramView);
                ButterKnife.inject(this, paramView);
            }
        }
    }
}

