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

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
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
    final class GameMicroFragment$LayoutAdapter extends ah {
        final /* synthetic */ GameMicroFragment a;

        GameMicroFragment$LayoutAdapter(GameMicroFragment gameMicroFragment) {
            this.a = gameMicroFragment;
        }

        private GameLayoutRoot$ModuleLayout d(int n) {
            List list = GameMicroFragment.d(this.a);
            if (GameMicroFragment.a(this.a) != null) {
                --n;
            }
            return (GameLayoutRoot$ModuleLayout) list.get(n);
        }

        public final int a() {
            if (GameMicroFragment.d(this.a) != null) {
                int n = GameMicroFragment.d(this.a).size();
                if (GameMicroFragment.a(this.a) != null) {
                    ++n;
                }
                return n;
            }
            return 0;
        }

        public final int a(int n) {
            if (GameMicroFragment.a(this.a) != null && n == 0) {
                return 0;
            }
            GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
            ModuleType moduleType = gameLayoutRoot$ModuleLayout.getType();
            if (moduleType == ModuleType.GAME_GROUP) {
                return 1 + (gameLayoutRoot$ModuleLayout.getGameGroup().getRowCount() << 4);
            }
            if (moduleType == ModuleType.ACTIVITY) {
                return 2;
            }
            if (moduleType == ModuleType.LOCAL) {
                return 3;
            }
            return -1;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public final ay a(ViewGroup viewGroup, int n) {
            N n2 = a.b(n);
            LayoutInflater layoutInflater = LayoutInflater.from(this.a.getActivity());
            switch (n2.a()) {
                default: {
                    return null;
                }
                case 0: {
                    return new GameMicroFragment$LayoutAdapter$PromotionViewPager(this, layoutInflater.inflate(2130903225, viewGroup, false));
                }
                case 1: {
                    GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) layoutInflater.inflate(2130903247, viewGroup, false);
                    gameMicroItemSection.a(n2.b());
                    return new ab(this, gameMicroItemSection);
                }
                case 2: {
                    return new Z(this, layoutInflater.inflate(2130903244, viewGroup, false));
                }
                case 3:
            }
            GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) layoutInflater.inflate(2130903247, viewGroup, false);
            if (GameMicroFragment.b(this.a) == 0) {
                gameMicroItemSection.a();
                do {
                    return new ab(this, gameMicroItemSection);
                    break;
                } while (true);
            }
            gameMicroItemSection.a(1);
            return new ab(this, gameMicroItemSection);
        }

        public final void a(ay ay2, int n) {
            switch (a.b(this.a(n)).a()) {
                default: {
                    return;
                }
                case 0: {
                    ((GameMicroFragment$LayoutAdapter$PromotionViewPager) ay2).q();
                    return;
                }
                case 1: {
                    GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                    ((GameMicroItemSection) ((Object) ay2.a)).a(gameLayoutRoot$ModuleLayout);
                    ay2.a.findViewById(2131493432).setOnClickListener(new X(this, gameLayoutRoot$ModuleLayout));
                    return;
                }
                case 2: {
                    Z z = (Z) ay2;
                    GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                    SmartImageView smartImageView = (SmartImageView) z.a.findViewById(2131493025);
                    GameLayoutRoot$ModuleLayout$ActivityItem gameLayoutRoot$ModuleLayout$ActivityItem = gameLayoutRoot$ModuleLayout.getActivity();
                    smartImageView.setImageUrl(gameLayoutRoot$ModuleLayout$ActivityItem.getBannerImage());
                    smartImageView.setOnClickListener(new aa(z, gameLayoutRoot$ModuleLayout$ActivityItem));
                    return;
                }
                case 3:
            }
            GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) ((Object) ay2.a);
            gameMicroItemSection.setHasPlayed(true);
            gameMicroItemSection.a(GameMicroFragment.c(this.a));
            View view = ay2.a.findViewById(2131493432);
            if (GameMicroFragment.b(this.a) > 3) {
                view.setVisibility(View.VISIBLE);
                view.setOnClickListener(new Y(this));
                return;
            }
            view.setVisibility(View.GONE);
        }
        public class PromotionViewPager extends ay {
            final /* synthetic */ GameMicroFragment$LayoutAdapter k;
            ArrayList<View> i;
            Handler j;
            @InjectView(value = 2131493484)
            LinearLayout mViewDots;
            @InjectView(value = 2131493483)
            ViewPager mViewPager;
            private ArrayList<ImageView> l;

            /*
             * Enabled aggressive block sorting
             */
            public PromotionViewPager(GameMicroFragment$LayoutAdapter gameMicroFragment$LayoutAdapter, View view) {
                this.k = gameMicroFragment$LayoutAdapter;
                super(view);
                this.j = new ag(this);
                this.mViewPager = (ViewPager)view. findViewById(2131493483);
                this.mViewDots = (LinearLayout)view. findViewById(2131493484);
                this.i = new ArrayList();
                this.l = new ArrayList();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(20, 20, 20, 20);
                Game[] arrgame = GameMicroFragment.a(gameMicroFragment$LayoutAdapter.a);
                int n = arrgame.length;
                int n2 = 0;
                while (n2 < n) {
                    Game game = arrgame[n2];
                    SmartImageView smartImageView = new SmartImageView(gameMicroFragment$LayoutAdapter.a.getActivity());
                    smartImageView.setLayoutParams(layoutParams);
                    smartImageView.setImageUrl(game.getBanner());
                    smartImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    smartImageView.setOnClickListener(new ac(this, gameMicroFragment$LayoutAdapter, game.get_id()));
                    this.i.add(smartImageView);
                    ImageView imageView = new ImageView(gameMicroFragment$LayoutAdapter.a.getActivity());
                    int n3 = this.l.size() == 0 ? 2130837927 : 2130837926;
                    imageView.setImageResource(n3);
                    this.l.add(imageView);
                    this.mViewDots.addView((View) imageView, layoutParams);
                    ++n2;
                }
            }

            private static void a(ImageView imageView, boolean bl) {
                if (bl) {
                    imageView.setImageResource(2130837927);
                    return;
                }
                imageView.setImageResource(2130837926);
            }

            static /* synthetic */ void a(GameMicroFragment$LayoutAdapter$PromotionViewPager gameMicroFragment$LayoutAdapter$PromotionViewPager) {
                gameMicroFragment$LayoutAdapter$PromotionViewPager.s();
            }

            /*
             * Enabled aggressive block sorting
             */
            static /* synthetic */ void a(GameMicroFragment$LayoutAdapter$PromotionViewPager gameMicroFragment$LayoutAdapter$PromotionViewPager, int n) {
                int n2 = 0;
                while (n2 < gameMicroFragment$LayoutAdapter$PromotionViewPager.l.size()) {
                    if (n2 == n) {
                        GameMicroFragment$LayoutAdapter$PromotionViewPager.a(gameMicroFragment$LayoutAdapter$PromotionViewPager.l.get(n2), true);
                    } else {
                        GameMicroFragment$LayoutAdapter$PromotionViewPager.a(gameMicroFragment$LayoutAdapter$PromotionViewPager.l.get(n2), false);
                    }
                    ++n2;
                }
            }

            static /* synthetic */ void b(GameMicroFragment$LayoutAdapter$PromotionViewPager gameMicroFragment$LayoutAdapter$PromotionViewPager) {
                gameMicroFragment$LayoutAdapter$PromotionViewPager.r();
            }

            private void r() {
                if (this.k.a.a == null) {
                    this.k.a.a = new Timer();
                }
                this.s();
                this.k.a.b = new af(this);
                this.k.a.a.schedule(this.k.a.b, 5000, 5000);
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
                this.r();
            }
        }
        public class GameMicroFragment$LayoutAdapter$PromotionViewHolder extends ay {
            @InjectView(value = 2131493481)
            TextView mDesc;
            @InjectView(value = 2131492916)
            NewGameDownloadButton mDownload;
            @InjectView(value = 2131493028)
            SmartImageView mIcon;
            @InjectView(value = 2131492928)
            TextView mName;
            @InjectView(value = 2131493482)
            TextView mPlayingCount;

            public GameMicroFragment$LayoutAdapter$PromotionViewHolder(GameMicroFragment$LayoutAdapter gameMicroFragment$LayoutAdapter, View view) {
                this.mIcon = (SmartImageView) view.findViewById(2131493028);
                this.mName = (TextView) view. findViewById(2131492928);
                this.mPlayingCount = (TextView) view. findViewById(2131493482);
                this.mDownload = (NewGameDownloadButton)  view.findViewById(2131492916);
                this.mDesc = (TextView)  view.findViewById(2131493481);
            }

        }
    }
}
