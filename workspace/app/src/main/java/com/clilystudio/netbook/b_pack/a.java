package com.clilystudio.netbook.b_pack;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.util.InsideLinkIntent;

public final class a extends b {
    private InsideLink b;

    public a(Context paramContext, InsideLink paramInsideLink) {
        super(paramContext);
        this.b = paramInsideLink;
    }

    final Intent a() {
        try {
            InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.a, this.b);
            return localInsideLinkIntent;
        } catch (UnImplementException localUnImplementException) {
            localUnImplementException.printStackTrace();
        }
        return null;
    }

    public final void onClick(View paramView) {
        super.onClick(paramView);
        Context localContext = this.a;
        InsideLink localInsideLink = this.b;
        com.clilystudio.netbook.umeng.a_Pack.b.a(localContext, "post_official_link_click", localInsideLink.getType().getName() + "-" + localInsideLink.getLabel());
    }
}

