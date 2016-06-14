package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public final class a
        extends b {
    private InsideLink b;

    public a(Context context, InsideLink insideLink) {
        super(context);
        this.b = insideLink;
    }

    @Override
    final Intent a() {
        try {
            InsideLinkIntent insideLinkIntent = new InsideLinkIntent(this.a, this.b);
            return insideLinkIntent;
        } catch (UnImplementException var2_2) {
            var2_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final void onClick(View view) {
        super.onClick(view);
        Context context = this.a;
        InsideLink insideLink = this.b;
        MiStatInterface.recordCountEvent("post_official_link_click", insideLink.getType().getName() + "-" + insideLink.getLabel());
    }
}
