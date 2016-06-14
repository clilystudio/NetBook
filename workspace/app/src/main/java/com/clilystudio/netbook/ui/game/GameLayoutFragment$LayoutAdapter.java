package com.clilystudio.netbook.ui.game;

import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout$ActivityItem;
import com.clilystudio.netbook.model.ModuleType;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GameItemSection;

import java.util.List;

final class GameLayoutFragment$LayoutAdapter extends ah {
    final /* synthetic */ GameLayoutFragment a;

    GameLayoutFragment$LayoutAdapter(GameLayoutFragment gameLayoutFragment) {
        this.a = gameLayoutFragment;
    }

    private GameLayoutRoot$ModuleLayout d(int n) {
        List list = GameLayoutFragment.c(this.a);
        if (GameLayoutFragment.b(this.a) != null) {
            --n;
        }
        return (GameLayoutRoot$ModuleLayout) list.get(n);
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
        GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
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
                return new GameLayoutFragment$LayoutAdapter$PromotionViewHolder(this, layoutInflater.inflate(2130903224, viewGroup, false));
            }
            case 1: {
                GameItemSection gameItemSection = (GameItemSection) layoutInflater.inflate(2130903246, viewGroup, false);
                gameItemSection.a(n2.b());
                return new M(this, gameItemSection);
            }
            case 2: {
                return new K(this, layoutInflater.inflate(2130903244, viewGroup, false));
            }
            case 3:
        }
        GameItemSection gameItemSection = (GameItemSection) layoutInflater.inflate(2130903246, viewGroup, false);
        gameItemSection.a((2 + GameLayoutFragment.a) / 3);
        return new M(this, gameItemSection);
    }

    public final void a(ay ay2, int n) {
        switch (a.b(this.a(n)).a()) {
            default: {
                return;
            }
            case 0: {
                GameLayoutFragment$LayoutAdapter$PromotionViewHolder gameLayoutFragment$LayoutAdapter$PromotionViewHolder = (GameLayoutFragment$LayoutAdapter$PromotionViewHolder) ay2;
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mName.setText(GameLayoutFragment.b(this.a).getName());
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload.setGame(GameLayoutFragment.b(this.a));
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDownload.a(GameLayoutFragment.b(this.a).getDownloadStatus());
                TextView textView = gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mPlayingCount;
                Object[] arrobject = new Object[]{GameLayoutFragment.b(this.a).getMainPromoInfo().getPlayingCount()};
                textView.setText(String.format("%d\u4eba\u5728\u73a9", arrobject));
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mDesc.setText(GameLayoutFragment.b(this.a).getMainPromoInfo().getDesc());
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon.setImageUrl(GameLayoutFragment.b(this.a).getIcon());
                gameLayoutFragment$LayoutAdapter$PromotionViewHolder.mIcon.setOnClickListener(new I(this));
                return;
            }
            case 1: {
                GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                ((GameItemSection) ((Object) ay2.a)).a(gameLayoutRoot$ModuleLayout);
                ay2.a.findViewById(2131493432).setOnClickListener(new J(this, gameLayoutRoot$ModuleLayout));
                return;
            }
            case 2: {
                K k = (K) ay2;
                GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
                SmartImageView smartImageView = (SmartImageView) k.a.findViewById(2131493025);
                GameLayoutRoot$ModuleLayout$ActivityItem gameLayoutRoot$ModuleLayout$ActivityItem = gameLayoutRoot$ModuleLayout.getActivity();
                smartImageView.setImageUrl(gameLayoutRoot$ModuleLayout$ActivityItem.getBannerImage());
                smartImageView.setOnClickListener(new L(k, gameLayoutRoot$ModuleLayout$ActivityItem));
                return;
            }
            case 3:
        }
        GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout = this.d(n);
        ((GameItemSection) ((Object) ay2.a)).b(gameLayoutRoot$ModuleLayout);
        ay2.a.findViewById(2131493432).setVisibility(8);
    }
}
