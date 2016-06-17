package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.clilystudio.netbook.widget.GameItemSection;
import com.clilystudio.netbook.widget.NewGameDownloadButton;
import com.umeng.a.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

public class GameLayoutFragment extends BaseLoadingFragment {
    public static int a = 3;
    private RecyclerView b;
    private List<GameLayoutRoot.ModuleLayout> c;
    private LayoutAdapter d;
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

    public static GameLayoutRoot.ModuleLayout g() {
        String[] arrstring = new String[]{"\u76d7\u5893\u82f1\u96c4", "\u53eb\u6211\u6076\u9b54\u5927\u4eba", "\u5973\u795e\u51b2\u6211\u6765"};
        int[] arrn = new int[]{R.drawable.aoyou_game_icon1, R.drawable.aoyou_game_icon2, R.drawable.aoyou_game_icon3};
        String[] arrstring2 = new String[]{"mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWRhb211eWluZ3hpYW9uZyZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU=", "wge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWppYW93b2Vtb2RhcmVuJnJlc291cmNlX3R5cGU9NCZnYW1lbGlzdF90eXBlPXNpbmdsZV9nYW1lX3NldHRpbmcmZnJvbT1zaW5nbGVfZ2FtZQ==", "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPW52c2hlbmNob25nd2xhaSZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU="};
        GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout = new GameLayoutRoot.ModuleLayout();
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
        for (GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout : this.c) {
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
        return R.layout.activity_game_layout;
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
        this.d = new LayoutAdapter(this);
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
        this.b = (RecyclerView) view.findViewById(R.id.recycler);
    }

    final class LayoutAdapter extends ah {
        final /* synthetic */ GameLayoutFragment a;

        LayoutAdapter(GameLayoutFragment gameLayoutFragment) {
            this.a = gameLayoutFragment;
        }

        private GameLayoutRoot.ModuleLayout d(int n) {
            List list = GameLayoutFragment.c(this.a);
            if (GameLayoutFragment.b(this.a) != null) {
                --n;
            }
            return (GameLayoutRoot.ModuleLayout) list.get(n);
        }

        public final int a() {
            if (GameLayoutFragment.c(this.a) != null) {
                int n = GameLayoutFragment.c(this.a).size();
                if (GameLayoutFragment.b(this.a) != null) {
                    ++n;
                }
                return n;
            }
            return 0;
        }

        public final int a(int n) {
            if (GameLayoutFragment.b(this.a) != null && n == 0) {
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
            if (moduleType == ModuleType.AOYOU) {
                return 3;
            }
            return -1;
        }

        public final ay a(ViewGroup viewGroup, int n) {
            N n2 = a.b(n);
            LayoutInflater layoutInflater = LayoutInflater.from(this.a.getActivity());
            switch (n2.a()) {
                default: {
                    return null;
                }
                case 0: {
                    return new LayoutAdapter$PromotionViewHolder(this, layoutInflater.inflate(R.layout.game_layout_promotion_view, viewGroup, false));
                }
                case 1: {
                    GameItemSection gameItemSection = (GameItemSection) layoutInflater.inflate(R.layout.item_game_layout, viewGroup, false);
                    gameItemSection.a(n2.b());
                    return new M(this, gameItemSection);
                }
                case 2: {
                    return new K(this, layoutInflater.inflate(R.layout.item_activity_layout, viewGroup, false));
                }
                case 3:
            }
            GameItemSection gameItemSection = (GameItemSection) layoutInflater.inflate(R.layout.item_game_layout, viewGroup, false);
            gameItemSection.a((2 + GameLayoutFragment.a) / 3);
            return new M(this, gameItemSection);
        }

        public final void a(ay ay2, int n) {
            switch (a.b(this.a(n)).a()) {
                default: {
                    return;
                }
                case 0: {
                    LayoutAdapter$PromotionViewHolder gameLayoutFragment$LayoutAdapter$PromotionViewHolder = (LayoutAdapter$PromotionViewHolder) ay2;
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mName.setText(GameLayoutFragment.b(this.a).getName());
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload.setGame(GameLayoutFragment.b(this.a));
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload.a(GameLayoutFragment.b(this.a).getDownloadStatus());
                    TextView textView = gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount;
                    Object[] arrobject = new Object[]{GameLayoutFragment.b(this.a).getMainPromoInfo().getPlayingCount()};
                    textView.setText(String.format("%d\u4eba\u5728\u73a9", arrobject));
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDesc.setText(GameLayoutFragment.b(this.a).getMainPromoInfo().getDesc());
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon.setImageUrl(GameLayoutFragment.b(this.a).getIcon());
                    gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            LayoutAdapter.this.a.startActivity(GameDetailActivity.a(LayoutAdapter.this.a.getActivity(), GameLayoutFragment.b(LayoutAdapter.this.a).get_id()));
                            MiStatInterface.recordCountEvent("game_center_layout_promotion", GameLayoutFragment.b(LayoutAdapter.this.a).getName());
                        }
                    });
                    return;
                }
                case 1: {
                    final GameLayoutRoot.ModuleLayout moduleLayout = this.d(n);
                    ((GameItemSection) ((Object) ay2.a)).a(moduleLayout);
                    ay2.a.findViewById(R.id.more).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            Intent intent = new Intent(LayoutAdapter.this.a.getActivity(), GameListActivity.class);
                            intent.putExtra("game_list_title", moduleLayout.getGameGroup().getName());
                            intent.putExtra("game_list_id", moduleLayout.getGameGroup().get_id());
                            LayoutAdapter.this.a.startActivity(intent);
                        }
                    });
                    return;
                }
                case 2: {
                    final K k = (K) ay2;
                    GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                    SmartImageView smartImageView = (SmartImageView) k.a.findViewById(R.id.image);
                    final GameLayoutRoot.ModuleLayout.ActivityItem activityItem = gameLayoutRoot$ModuleLayout.getActivity();
                    smartImageView.setImageUrl(activityItem.getBannerImage());
                    smartImageView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            try {
                                InsideLinkIntent insideLinkIntent = new InsideLinkIntent((Context) k.i.a.getActivity(), this.a.getLink());
                                k.i.a.startActivity(insideLinkIntent);
                                MiStatInterface.recordCountEvent("game_center_layout_banner", activityItem.getLink());
                                return;
                            } catch (UnImplementException var3_3) {
                                var3_3.printStackTrace();
                                return;
                            }
                        }
                    });
                    return;
                }
                case 3:
            }
            GameLayoutRoot.ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
            ((GameItemSection) ((Object) ay2.a)).b(gameLayoutRoot$ModuleLayout);
            ay2.a.findViewById(R.id.more).setVisibility(View.GONE);
        }
        public class LayoutAdapter$PromotionViewHolder extends ay {
            TextView mDesc;
            NewGameDownloadButton mDownload;
            SmartImageView mIcon;
            TextView mName;
            TextView mPlayingCount;

            public LayoutAdapter$PromotionViewHolder(GameLayoutFragment.LayoutAdapter layoutAdapter, View view) {
                this.mIcon = (SmartImageView)view. findViewById(R.id.icon);
                this.mName = (TextView) view.findViewById(R.id.name);
                this.mPlayingCount = (TextView) view.findViewById(R.id.playingCount);
                this.mDownload = (NewGameDownloadButton) view.findViewById(R.id.download);
                this.mDesc = (TextView) view.findViewById(R.id.desc);
            }
        }
    }

}
