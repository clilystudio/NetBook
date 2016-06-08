package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;

final class ag extends Handler {
    ag(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
    }

    public final void handleMessage(Message paramMessage) {
        switch (paramMessage.what) {
            default:
                return;
            case 1:
        }
        this.a.mViewPager.setCurrentItem((1 + this.a.k.a.c) % GameMicroFragment.a(this.a.k.a).length);
    }
}

