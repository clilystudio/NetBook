package com.clilystudio.netbook.ui.game;

import android.content.Intent;
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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.BaseLoadingFragment;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.InsideLinkIntent;
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
    private LayoutAdapter g;
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

    static /* synthetic */ GameLayoutRoot.ModuleLayout c(GameMicroFragment gameMicroFragment) {
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
        return R.layout.activity_game_layout;
    }

    @Override
    protected final void b() {
        this.f();
        new W(this, 0).b(new String[0]);
    }

    public final void g() {
        if (this.f == null) {
            this.f = new GameLayoutRoot.ModuleLayout();
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
        this.g = new LayoutAdapter(this);
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
        this.d = (RecyclerView) view.findViewById(R.id.recycler);
    }
    final class LayoutAdapter extends ah {
        final /* synthetic */ GameMicroFragment a;

        LayoutAdapter(GameMicroFragment gameMicroFragment) {
            this.a = gameMicroFragment;
        }

        private GameLayoutRoot.ModuleLayout d(int n) {
            List list = GameMicroFragment.d(this.a);
            if (GameMicroFragment.a(this.a) != null) {
                --n;
            }
            return (GameLayoutRoot.ModuleLayout) list.get(n);
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
            GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
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
                    return new PromotionViewPager(this, layoutInflater.inflate(R.layout.game_layout_promotion_viewpager, viewGroup, false));
                }
                case 1: {
                    GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) layoutInflater.inflate(R.layout.item_micro_game_layout, viewGroup, false);
                    gameMicroItemSection.a(n2.b());
                    return new ab(this, gameMicroItemSection);
                }
                case 2: {
                    return new Z(this, layoutInflater.inflate(R.layout.item_activity_layout, viewGroup, false));
                }
                case 3:
            }
            GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) layoutInflater.inflate(R.layout.item_micro_game_layout, viewGroup, false);
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
                    ((PromotionViewPager) ay2).q();
                    return;
                }
                case 1: {
                    final GameLayoutRoot.ModuleLayout moduleLayout = this.d(n);
                    ((GameMicroItemSection) ((Object) ay2.a)).a(moduleLayout);
                    ay2.a.findViewById(R.id.more).setOnClickListener(new View.OnClickListener() {
                       @Override
                        public void onClick(View v) {
                           Intent intent = new Intent(LayoutAdapter.this.a.getActivity(), GameListActivity.class);
                           intent.putExtra("game_list_title", moduleLayout.getGameGroup().getName());
                           intent.putExtra("game_list_id", moduleLayout.getGameGroup().get_id());
                           intent.putExtra("micro_game", true);
                           LayoutAdapter.this.a.startActivity(intent);
                        }
                    });
                    return;
                }
                case 2: {
                    final Z z = (Z) ay2;
                    GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                    SmartImageView smartImageView = (SmartImageView) z.a.findViewById(R.id.image);
                    final GameLayoutRoot.ModuleLayout.ActivityItem activityItem = gameLayoutRoot$ModuleLayout.getActivity();
                    smartImageView.setImageUrl(activityItem.getBannerImage());
                    smartImageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            try {
                                if (GameMicroFragment.e(z.i.a) != null && GameMicroFragment.e(z.i.a).indexOf(activityItem.getBannerImage()) >= 0) {
                                    b.a(z.i.a.getActivity(), "micro_game_banner_click", "Banner " + GameMicroFragment.e(z.i.a).indexOf(activityItem.getBannerImage()));
                                }
                                InsideLinkIntent insideLinkIntent = new InsideLinkIntent(z.i.a.getActivity(), activityItem.getLink(), true);
                                z.i.a.startActivity(insideLinkIntent);
                                return;
                            } catch (UnImplementException var2_3) {
                                var2_3.printStackTrace();
                                return;
                            }
                        }
                    });
                    return;
                }
                case 3:
            }
            GameMicroItemSection gameMicroItemSection = (GameMicroItemSection) ((Object) ay2.a);
            gameMicroItemSection.setHasPlayed(true);
            gameMicroItemSection.a(GameMicroFragment.c(this.a));
            View view = ay2.a.findViewById(R.id.more);
            if (GameMicroFragment.b(this.a) > 3) {
                view.setVisibility(View.VISIBLE);
                view.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent intent = new Intent(LayoutAdapter.this.a.getActivity(), GameLocalListActivity.class);
                        LayoutAdapter.this.a.startActivity(intent);
                    }
                });
                return;
            }
            view.setVisibility(View.GONE);
        }
        public class PromotionViewPager extends ay {
            final /* synthetic */ LayoutAdapter k;
            ArrayList<View> i;
            Handler j;
            LinearLayout mViewDots;
            ViewPager mViewPager;
            private ArrayList<ImageView> l;

            /*
             * Enabled aggressive block sorting
             */
            public PromotionViewPager(LayoutAdapter gameMicroFragment$LayoutAdapter, View view) {
                this.k = gameMicroFragment$LayoutAdapter;
                super(view);
                this.j = new ag(this);
                this.mViewPager = (ViewPager)view. findViewById(R.id.promotion_pager);
                this.mViewDots = (LinearLayout)view. findViewById(R.id.promotion_bottom_dots);
                this.i = new ArrayList();
                this.l = new ArrayList();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(20, 20, 20, 20);
                Game[] arrgame = GameMicroFragment.a(gameMicroFragment$LayoutAdapter.a);
                int n = arrgame.length;
                int n2 = 0;
                while (n2 < n) {
                    final Game game = arrgame[n2];
                    SmartImageView smartImageView = new SmartImageView(gameMicroFragment$LayoutAdapter.a.getActivity());
                    smartImageView.setLayoutParams(layoutParams);
                    smartImageView.setImageUrl(game.getBanner());
                    smartImageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    smartImageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            PromotionViewPager.this.k.a.startActivity(GameDetailActivity.a(PromotionViewPager.this.k.a.getActivity(), game.get_id(), true, false));
                        }
                    });
                    this.i.add(smartImageView);
                    ImageView imageView = new ImageView(gameMicroFragment$LayoutAdapter.a.getActivity());
                    int n3 = this.l.size() == 0 ? R.drawable.ic_point_select : R.drawable.ic_point_normal;
                    imageView.setImageResource(n3);
                    this.l.add(imageView);
                    this.mViewDots.addView((View) imageView, layoutParams);
                    ++n2;
                }
            }

            private static void a(ImageView imageView, boolean bl) {
                if (bl) {
                    imageView.setImageResource(R.drawable.ic_point_select);
                    return;
                }
                imageView.setImageResource(R.drawable.ic_point_normal);
            }

            static /* synthetic */ void a(PromotionViewPager gameMicroFragment$PromotionViewPager) {
                gameMicroFragment$PromotionViewPager.s();
            }

            /*
             * Enabled aggressive block sorting
             */
            static /* synthetic */ void a(PromotionViewPager gameMicroFragment$PromotionViewPager, int n) {
                int n2 = 0;
                while (n2 < gameMicroFragment$PromotionViewPager.l.size()) {
                    if (n2 == n) {
                        PromotionViewPager.a(gameMicroFragment$PromotionViewPager.l.get(n2), true);
                    } else {
                        PromotionViewPager.a(gameMicroFragment$PromotionViewPager.l.get(n2), false);
                    }
                    ++n2;
                }
            }

            static /* synthetic */ void b(PromotionViewPager gameMicroFragment$PromotionViewPager) {
                gameMicroFragment$PromotionViewPager.r();
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
        public class PromotionViewHolder extends ay {
            TextView mDesc;
            NewGameDownloadButton mDownload;
            SmartImageView mIcon;
            TextView mName;
            TextView mPlayingCount;

            public PromotionViewHolder(LayoutAdapter gameMicroFragment$LayoutAdapter, View view) {
                this.mIcon = (SmartImageView) view.findViewById(R.id.icon);
                this.mName = (TextView) view. findViewById(R.id.name);
                this.mPlayingCount = (TextView) view. findViewById(R.id.playingCount);
                this.mDownload = (NewGameDownloadButton)  view.findViewById(R.id.download);
                this.mDesc = (TextView)  view.findViewById(R.id.desc);
            }

        }
    }
}
