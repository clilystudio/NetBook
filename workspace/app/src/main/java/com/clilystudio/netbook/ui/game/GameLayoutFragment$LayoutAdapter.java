package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameItemSection;

import java.util.List;

final class GameLayoutFragment$LayoutAdapter extends ah {

    GameLayoutFragment a;     // final access specifier removed

    GameLayoutFragment$LayoutAdapter(GameLayoutFragment GameLayoutFragment1) {
        a = GameLayoutFragment1;
    }

    private GameLayoutRoot$ModuleLayout d(int int1) {
        List List2 = GameLayoutFragment.c(a);

        if (GameLayoutFragment.b(a) != null)
            --int1;
        return (GameLayoutRoot$ModuleLayout) List2.get(int1);
    }

    public final int a() {
        int int1;

        if (GameLayoutFragment.c(a) == null)
            return 0;
        int1 = GameLayoutFragment.c(a).size();
        if (GameLayoutFragment.b(a) != null)
            ++int1;
        return int1;
    }

    public final int a(int int1) {
        if (GameLayoutFragment.b(a) != null && int1 == 0)
            return 0;
        else {
            GameLayoutRoot$ModuleLayout ModuleLayout2 = d(int1);
            ModuleType ModuleType3 = ModuleLayout2.getType();

            if (ModuleType3 == ModuleType.GAME_GROUP)
                return 1 + (ModuleLayout2.getGameGroup().getRowCount() << 4);
            else if (ModuleType3 == ModuleType.ACTIVITY)
                return 2;
            else if (ModuleType3 == ModuleType.AOYOU)
                return 3;
            else
                return -1;
        }
    }

    public final ay a(ViewGroup ViewGroup1, int int2) {
        N N3 = com.clilystudio.netbook.hpay100.a.a.b(int2);
        LayoutInflater LayoutInflater4 = LayoutInflater.from((Context) a.getActivity());

        switch (N3.a()) {
            default:
                return null;
            case 0:
                return (ay) new GameLayoutFragment$LayoutAdapter$PromotionViewHolder(this, LayoutInflater4.inflate(2130903224, ViewGroup1, false));
            case 1:
                GameItemSection GameItemSection6 = (GameItemSection) LayoutInflater4.inflate(2130903246, ViewGroup1, false);

                GameItemSection6.a(N3.b());
                return (ay) new M(this, GameItemSection6);
            case 2:
                return (ay) new K(this, LayoutInflater4.inflate(2130903244, ViewGroup1, false));
            case 3:
                GameItemSection GameItemSection5 = (GameItemSection) LayoutInflater4.inflate(2130903246, ViewGroup1, false);

                GameItemSection5.a((2 + GameLayoutFragment.a) / 3);
                return (ay) new M(this, GameItemSection5);
        }
    }

    public final void a(ay ay1, int int2) {
        switch (com.clilystudio.netbook.hpay100.a.a.b(a(int2)).a()) {
            default:
                return;
            case 0:
                GameLayoutFragment$LayoutAdapter$PromotionViewHolder PromotionViewHolder9 = (GameLayoutFragment$LayoutAdapter$PromotionViewHolder) ay1;
                TextView TextView10;
                Object[] Object_1darray11;

                PromotionViewHolder9.mName.setText((CharSequence) GameLayoutFragment.b(a).getName());
                PromotionViewHolder9.mDownload.setGame(GameLayoutFragment.b(a));
                PromotionViewHolder9.mDownload.a(GameLayoutFragment.b(a).getDownloadStatus());
                TextView10 = PromotionViewHolder9.mPlayingCount;
                Object_1darray11 = new Object[1];
                Object_1darray11[0] = Integer.valueOf(GameLayoutFragment.b(a).getMainPromoInfo().getPlayingCount());
                TextView10.setText((CharSequence) String.format("%d\u4EBA\u5728\u73A9", Object_1darray11));
                PromotionViewHolder9.mDesc.setText((CharSequence) GameLayoutFragment.b(a).getMainPromoInfo().getDesc());
                PromotionViewHolder9.mIcon.setImageUrl(GameLayoutFragment.b(a).getIcon());
                PromotionViewHolder9.mIcon.setOnClickListener((View$OnClickListener) new I(this));
                return;
            case 1:
                GameLayoutRoot$ModuleLayout ModuleLayout8 = d(int2);

                ((GameItemSection) ay1.a).a(ModuleLayout8);
                ay1.a.findViewById(2131493432).setOnClickListener((View$OnClickListener) new J(this, ModuleLayout8));
                return;
            case 2:
                K K4 = (K) ay1;
                GameLayoutRoot$ModuleLayout ModuleLayout5 = d(int2);
                SmartImageView SmartImageView6 = (SmartImageView) K4.a.findViewById(2131493025);
                GameLayoutRoot$ModuleLayout$ActivityItem ActivityItem7 = ModuleLayout5.getActivity();

                SmartImageView6.setImageUrl(ActivityItem7.getBannerImage());
                SmartImageView6.setOnClickListener((View$OnClickListener) new L(K4, ActivityItem7));
                return;
            case 3:
                GameLayoutRoot$ModuleLayout ModuleLayout3 = d(int2);

                ((GameItemSection) ay1.a).b(ModuleLayout3);
                ay1.a.findViewById(2131493432).setVisibility(8);
                return;
        }
    }
}
