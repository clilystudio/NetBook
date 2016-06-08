package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.view.View;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class W
        implements View.OnClickListener {
    W(GiftGameGiftButton paramGiftGameGiftButton, a parama, String paramString) {
    }

    public final void onClick(View paramView) {
        this.a.dismiss();
        am.a(this.c.getContext(), this.b);
        e.a((Activity) this.c.getContext(), "已复制");
        if (GiftGameGiftButton.b(this.c) != null) {
            am.d(this.c.getContext(), GiftGameGiftButton.b(this.c).getAndroidPackageName());
            return;
        }
        e.a((Activity) this.c.getContext(), "启动游戏失败");
    }
}

