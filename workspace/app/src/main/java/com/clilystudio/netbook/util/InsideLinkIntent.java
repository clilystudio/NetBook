package com.clilystudio.netbook.util;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkType;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity;

@SuppressLint(value = {"ParcelCreator"})
public class InsideLinkIntent extends Intent {
    private final Context a;

    public InsideLinkIntent(Context context, InsideLink insideLink) {
        this.a = context;
        this.a(insideLink);
    }

    private void a() {
        if (this.a instanceof SplashActivity) {
            this.putExtra("from_splash", true);
        }
    }

    private void a(InsideLink insideLink) {
        InsideLinkType type = insideLink.getType();
        if (type == InsideLinkType.BOOK) {
            this.setComponent(new ComponentName(this.a, BookInfoActivity.class));
            this.putExtra("book_id", insideLink.getValue());
            this.a();
        } else if (type == InsideLinkType.BOOKLIST) {
            this.setComponent(new ComponentName(this.a, UGCDetailActivity.class));
            this.putExtra("book_id", insideLink.getValue());
            this.a();
        }
    }
}
