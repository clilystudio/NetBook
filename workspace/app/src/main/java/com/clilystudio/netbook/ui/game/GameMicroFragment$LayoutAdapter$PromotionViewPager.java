package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.ay;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;

import java.util.ArrayList;
import java.util.Timer;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameMicroFragment$LayoutAdapter$PromotionViewPager extends ay {
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
    public GameMicroFragment$LayoutAdapter$PromotionViewPager(GameMicroFragment$LayoutAdapter gameMicroFragment$LayoutAdapter, View view) {
        this.k = gameMicroFragment$LayoutAdapter;
        super(view);
        this.j = new ag(this);
        ButterKnife.inject((Object) this, view);
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
