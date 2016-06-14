package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameMicroItemSection;

import java.util.List;

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
}
