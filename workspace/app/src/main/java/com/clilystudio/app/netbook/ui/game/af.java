package com.clilystudio.app.netbook.ui.game;

import android.os.Message;

import java.util.TimerTask;

final class af extends TimerTask {
    af(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
    }

    public final void run() {
        Message localMessage = new Message();
        localMessage.what = 1;
        this.a.j.sendMessage(localMessage);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.af
 * JD-Core Version:    0.6.2
 */