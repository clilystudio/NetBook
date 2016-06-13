package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;

import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class W
        implements View.OnClickListener {
    private /* synthetic */ a a;
    private /* synthetic */ String b;
    private /* synthetic */ GiftGameGiftButton c;

    W(GiftGameGiftButton giftGameGiftButton, a a2, String string) {
        this.c = giftGameGiftButton;
        this.a = a2;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.a.dismiss();
        am.a((Context) this.c.getContext(), (String) this.b);
        e.a((Activity) ((Activity) this.c.getContext()), (String) "\u5df2\u590d\u5236");
        if (GiftGameGiftButton.b(this.c) != null) {
            am.d((Context) this.c.getContext(), (String) GiftGameGiftButton.b(this.c).getAndroidPackageName());
            return;
        }
        e.a((Activity) ((Activity) this.c.getContext()), (String) "\u542f\u52a8\u6e38\u620f\u5931\u8d25");
    }
}
