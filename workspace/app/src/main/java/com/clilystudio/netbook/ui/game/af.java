
package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

final class af extends TimerTask {

    af(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        a = PromotionViewPager1;
    }

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    public final void run()
    {
        Message Message1 = new Message();

        Message1.what = 1;
        a.j.sendMessage( Message1 );
    }
}
