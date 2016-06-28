package com.clilystudio.netbook.util;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkType;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity;
import com.clilystudio.netbook.util.a.b;

@SuppressLint(value = {"ParcelCreator"})
public class InsideLinkIntent extends Intent {
    private final Context a;
    private boolean b;

    public InsideLinkIntent(Context context, InsideLink insideLink) {
        this.a = context;
        this.a(insideLink);
    }

    public InsideLinkIntent(Context context, String string) {
        this.a = context;
        new b();
        if (string != null) {
            this.a(b.a(string));
            return;
        }
        throw new UnImplementException("Not implement");
    }

    public InsideLinkIntent(Context context, String string, boolean bl) {
        this.b = true;
        this.a = context;
        new b();
        if (string != null) {
            this.a(b.a(string));
            return;
        }
        throw new UnImplementException("Not implement");
    }

    private void a() {
        if (this.a instanceof SplashActivity) {
            this.putExtra("from_splash", true);
        }
    }

    private void a(InsideLink insideLink) {

        InsideLinkType type = insideLink.getType();
        if (type == InsideLinkType.GAME) {
            // GameDetailActivity
        } else if (type == InsideLinkType.POST) {
            this.setComponent(new ComponentName(this.a, PostDetailActivity.class));
            this.putExtra("PostBookId", insideLink.getValue());
            this.putExtra("post_type_key", "ramble");
            this.a();
//        } else if (type == InsideLinkType.LINK) {
//            this.setComponent(new ComponentName(this.a, AdWebViewActivity.class));
//            this.putExtra("extra_url", insideLink.getValue());
//            this.putExtra("extra_title", insideLink.getLabel());
//            this.a();
        } else if (type == InsideLinkType.BOOK) {
            this.setComponent(new ComponentName(this.a, BookInfoActivity.class));
            this.putExtra("book_id", insideLink.getValue());
            this.a();
        } else if (type == InsideLinkType.POST_HELP) {
            this.setComponent(new ComponentName(this.a, BookHelpActivity.class));
            this.putExtra("extraBookHelpId", insideLink.getValue());
            this.a();
        } else if (type == InsideLinkType.POST_REVIEW) {
            this.setComponent(new ComponentName(this.a, ReviewActivity.class));
            this.putExtra("extraReviewId", insideLink.getValue());
            this.a();
        } else if (type == InsideLinkType.BOOKLIST) {
            this.setComponent(new ComponentName(this.a, UGCDetailActivity.class));
            this.putExtra("book_id", insideLink.getValue());
            this.a();
//        } else {
//            throw new UnImplementException("Not implement");
        }
    }
}
