package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;

final class Z implements View.OnClickListener {
    private /* synthetic */ Context a;
    private /* synthetic */ String b;
    private /* synthetic */ HomeFindItem c;

    Z(HomeFindItem homeFindItem, Context context, String string) {
        this.c = homeFindItem;
        this.a = context;
        this.b = string;
    }

    @Override
    public final void onClick(View view) {
        this.c.a(this.a, this.b);
    }
}
