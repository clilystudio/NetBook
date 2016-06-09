package com.clilystudio.netbook.ui.game;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameMicroItemSection;
import com.clilystudio.netbook.widget.NewGameDownloadButton;
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
    private List<GameLayoutRoot.ModuleLayout> e;
    private GameLayoutRoot.ModuleLayout f;
    private GameMicroFragment.LayoutAdapter g;
    private Game[] h;
    private List<String> i;

    private int h() {
        if ((this.f == null) || ((this.f.getGameGroup() == null) && (this.f.getGameGroup().getGames() == null)))
            return 0;
        return this.f.getGameGroup().getGames().size();
    }

    protected final int a() {
        return 2130903102;
    }

    protected final void b() {
        f();
        new W(this, 0).b(new String[0]);
    }

    public final void g() {
        if (this.f == null)
            this.f = new GameLayoutRoot.ModuleLayout();
        this.f.setModule("local");
        this.f.setTitle("我玩过的");
        GameGroupItem localGameGroupItem = new GameGroupItem();
        localGameGroupItem.setName("我玩过的");
        Object localObject = (List) a.k(c.h, "played_game.txt");
        if (localObject == null)
            localObject = new ArrayList();
        localGameGroupItem.setGames((List) localObject);
        this.f.setGameGroup(localGameGroupItem);
    }

    public void onActivityCreated(Bundle paramBundle) {
        super.onActivityCreated(paramBundle);
        this.d.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.g = new GameMicroFragment.LayoutAdapter(this);
        this.d.setAdapter(this.g);
        b();
    }

    public void onPause() {
        super.onPause();
        b.b("game_micro_layout");
    }

    public void onResume() {
        super.onResume();
        if (this.g != null) {
            g();
            if (h() != 1)
                break label40;
            this.d.setAdapter(this.g);
        }
        while (true) {
            b.a("game_micro_layout");
            return;
            label40:
            this.g.b();
        }
    }

    public void onViewCreated(View paramView, Bundle paramBundle) {
        super.onViewCreated(paramView, paramBundle);
        this.d = ((RecyclerView) paramView.findViewById(2131493133));
    }
    final class LayoutAdapter extends ah {
        LayoutAdapter(GameMicroFragment paramGameMicroFragment) {
        }

        private GameLayoutRoot.ModuleLayout d(int paramInt) {
            List localList = GameMicroFragment.d(this.a);
            if (GameMicroFragment.a(this.a) != null)
                paramInt--;
            return (GameLayoutRoot.ModuleLayout) localList.get(paramInt);
        }

        public final int a() {
            if (GameMicroFragment.d(this.a) != null) {
                int i = GameMicroFragment.d(this.a).size();
                if (GameMicroFragment.a(this.a) != null)
                    i++;
                return i;
            }
            return 0;
        }

        public final int a(int paramInt) {
            if ((GameMicroFragment.a(this.a) != null) && (paramInt == 0))
                return 0;
            GameLayoutRoot.ModuleLayout localModuleLayout = d(paramInt);
            ModuleType localModuleType = localModuleLayout.getType();
            if (localModuleType == ModuleType.GAME_GROUP)
                return 1 + (localModuleLayout.getGameGroup().getRowCount() << 4);
            if (localModuleType == ModuleType.ACTIVITY)
                return 2;
            if (localModuleType == ModuleType.LOCAL)
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
                    return new GameMicroFragment.LayoutAdapter.PromotionViewPager(this, localLayoutInflater.inflate(2130903225, paramViewGroup, false));
                case 1:
                    GameMicroItemSection localGameMicroItemSection2 = (GameMicroItemSection) localLayoutInflater.inflate(2130903247, paramViewGroup, false);
                    localGameMicroItemSection2.a(localN.b());
                    return new ab(this, localGameMicroItemSection2);
                case 2:
                    return new Z(this, localLayoutInflater.inflate(2130903244, paramViewGroup, false));
                case 3:
            }
            GameMicroItemSection localGameMicroItemSection1 = (GameMicroItemSection) localLayoutInflater.inflate(2130903247, paramViewGroup, false);
            if (GameMicroFragment.b(this.a) == 0)
                localGameMicroItemSection1.a();
            while (true) {
                return new ab(this, localGameMicroItemSection1);
                localGameMicroItemSection1.a(1);
            }
        }

        public final void a(ay paramay, int paramInt) {
            switch (a.b(a(paramInt)).a()) {
                default:
                    return;
                case 0:
                    ((GameMicroFragment.LayoutAdapter.PromotionViewPager) paramay).q();
                    return;
                case 1:
                    GameLayoutRoot.ModuleLayout localModuleLayout2 = d(paramInt);
                    ((GameMicroItemSection) paramay.a).a(localModuleLayout2);
                    paramay.a.findViewById(2131493432).setOnClickListener(new X(this, localModuleLayout2));
                    return;
                case 2:
                    Z localZ = (Z) paramay;
                    GameLayoutRoot.ModuleLayout localModuleLayout1 = d(paramInt);
                    SmartImageView localSmartImageView = (SmartImageView) localZ.a.findViewById(2131493025);
                    GameLayoutRoot.ModuleLayout.ActivityItem localActivityItem = localModuleLayout1.getActivity();
                    localSmartImageView.setImageUrl(localActivityItem.getBannerImage());
                    localSmartImageView.setOnClickListener(new aa(localZ, localActivityItem));
                    return;
                case 3:
            }
            GameMicroItemSection localGameMicroItemSection = (GameMicroItemSection) paramay.a;
            localGameMicroItemSection.setHasPlayed(true);
            localGameMicroItemSection.a(GameMicroFragment.c(this.a));
            View localView = paramay.a.findViewById(2131493432);
            if (GameMicroFragment.b(this.a) > 3) {
                localView.setVisibility(0);
                localView.setOnClickListener(new Y(this));
                return;
            }
            localView.setVisibility(8);
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
        }

        public class PromotionViewPager extends ay {
            ArrayList<View> i;
            Handler j = new ag(this);
            @InjectView(2131493484)
            LinearLayout mViewDots;
            @InjectView(2131493483)
            ViewPager mViewPager;
            private ArrayList<ImageView> l;

            public PromotionViewPager(GameMicroFragment.LayoutAdapter paramLayoutAdapter, View paramView) {
                super(paramView);
                ButterKnife.inject(this, paramView);
                this.i = new ArrayList();
                this.l = new ArrayList();
                LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
                localLayoutParams.setMargins(20, 20, 20, 20);
                Game[] arrayOfGame = GameMicroFragment.a(paramLayoutAdapter.a);
                int m = arrayOfGame.length;
                int n = 0;
                if (n < m) {
                    Game localGame = arrayOfGame[n];
                    SmartImageView localSmartImageView = new SmartImageView(paramLayoutAdapter.a.getActivity());
                    localSmartImageView.setLayoutParams(localLayoutParams);
                    localSmartImageView.setImageUrl(localGame.getBanner());
                    localSmartImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    localSmartImageView.setOnClickListener(new ac(this, paramLayoutAdapter, localGame.get_id()));
                    this.i.add(localSmartImageView);
                    ImageView localImageView = new ImageView(paramLayoutAdapter.a.getActivity());
                    if (this.l.size() == 0) ;
                    for (int i1 = 2130837927; ; i1 = 2130837926) {
                        localImageView.setImageResource(i1);
                        this.l.add(localImageView);
                        this.mViewDots.addView(localImageView, localLayoutParams);
                        n++;
                        break;
                    }
                }
            }

            private static void a(ImageView paramImageView, boolean paramBoolean) {
                if (paramBoolean) {
                    paramImageView.setImageResource(2130837927);
                    return;
                }
                paramImageView.setImageResource(2130837926);
            }

            private void r() {
                if (this.k.a.a == null)
                    this.k.a.a = new Timer();
                s();
                this.k.a.b = new af(this);
                this.k.a.a.schedule(this.k.a.b, 5000L, 5000L);
            }

            private void s() {
                if (this.k.a.b != null) {
                    this.k.a.b.cancel();
                    this.k.a.b = null;
                }
            }

            public final void q() {
                this.mViewPager.setAdapter(new ah(this));
                this.mViewPager.addOnPageChangeListener(new ad(this));
                this.mViewPager.setOnTouchListener(new ae(this));
                this.mViewPager.setCurrentItem(this.k.a.c);
                r();
            }
        }
    }
}

