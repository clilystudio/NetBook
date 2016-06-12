package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameMicroItemSection;

import java.util.List;

final class GameMicroFragment$LayoutAdapter extends ah {

    GameMicroFragment a;     // final access specifier removed

    GameMicroFragment$LayoutAdapter(GameMicroFragment GameMicroFragment1) {
        a = GameMicroFragment1;
    }

    private GameLayoutRoot$ModuleLayout d(int int1) {
        List List2 = GameMicroFragment.d(a);

        if (GameMicroFragment.a(a) != null)
            --int1;
        return (GameLayoutRoot$ModuleLayout) List2.get(int1);
    }

    public final int a() {
        int int1;

        if (GameMicroFragment.d(a) == null)
            return 0;
        int1 = GameMicroFragment.d(a).size();
        if (GameMicroFragment.a(a) != null)
            ++int1;
        return int1;
    }

    public final int a(int int1) {
        if (GameMicroFragment.a(a) != null && int1 == 0)
            return 0;
        else {
            GameLayoutRoot$ModuleLayout ModuleLayout2 = d(int1);
            ModuleType ModuleType3 = ModuleLayout2.getType();

            if (ModuleType3 == ModuleType.GAME_GROUP)
                return 1 + (ModuleLayout2.getGameGroup().getRowCount() << 4);
            else if (ModuleType3 == ModuleType.ACTIVITY)
                return 2;
            else if (ModuleType3 == ModuleType.LOCAL)
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
                return (ay) new GameMicroFragment$LayoutAdapter$PromotionViewPager(this, LayoutInflater4.inflate(2130903225, ViewGroup1, false));
            case 1:
                GameMicroItemSection GameMicroItemSection6 = (GameMicroItemSection) LayoutInflater4.inflate(2130903247, ViewGroup1, false);

                GameMicroItemSection6.a(N3.b());
                return (ay) new ab(this, GameMicroItemSection6);
            case 2:
                return (ay) new Z(this, LayoutInflater4.inflate(2130903244, ViewGroup1, false));
            case 3:
                GameMicroItemSection GameMicroItemSection5 = (GameMicroItemSection) LayoutInflater4.inflate(2130903247, ViewGroup1, false);

                if (GameMicroFragment.b(a) == 0)
                    GameMicroItemSection5.a();
                else
                    GameMicroItemSection5.a(1);
                return (ay) new ab(this, GameMicroItemSection5);
        }
    }

    public final void a(ay ay1, int int2) {
        switch (com.clilystudio.netbook.hpay100.a.a.b(a(int2)).a()) {
            default:
                return;
            case 0:
                ((GameMicroFragment$LayoutAdapter$PromotionViewPager) ay1).q();
                return;
            case 1:
                GameLayoutRoot$ModuleLayout ModuleLayout9 = d(int2);

                ((GameMicroItemSection) ay1.a).a(ModuleLayout9);
                ay1.a.findViewById(2131493432).setOnClickListener((View$OnClickListener) new X(this, ModuleLayout9));
                return;
            case 2:
                Z Z5 = (Z) ay1;
                GameLayoutRoot$ModuleLayout ModuleLayout6 = d(int2);
                SmartImageView SmartImageView7 = (SmartImageView) Z5.a.findViewById(2131493025);
                GameLayoutRoot$ModuleLayout$ActivityItem ActivityItem8 = ModuleLayout6.getActivity();

                SmartImageView7.setImageUrl(ActivityItem8.getBannerImage());
                SmartImageView7.setOnClickListener((View$OnClickListener) new aa(Z5, ActivityItem8));
                return;
            case 3:
                GameMicroItemSection GameMicroItemSection3 = (GameMicroItemSection) ay1.a;
                View View4;

                GameMicroItemSection3.setHasPlayed(true);
                GameMicroItemSection3.a(GameMicroFragment.c(a));
                View4 = ay1.a.findViewById(2131493432);
                if (GameMicroFragment.b(a) > 3) {
                    View4.setVisibility(0);
                    View4.setOnClickListener((View$OnClickListener) new Y(this));
                } else
                    View4.setVisibility(8);
                return;
        }
    }
}
