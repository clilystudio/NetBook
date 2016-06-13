package com.clilystudio.netbook.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class E
        extends W<BookSummary> {
    public E(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903304);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookSummary bookSummary = (BookSummary) object;
        try {
            ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), 2130837766);
            this.a(1, bookSummary.getTitle());
            Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
            this.a(2, String.format("%d\u4eba\u5728\u8ffd  |  %.1f%%\u8bfb\u8005\u7559\u5b58  |  %s\u8457", arrobject));
            this.a(3, TextUtils.isEmpty(bookSummary.getPromLink()));
            return;
        } catch (Throwable var4_5) {
            var4_5.printStackTrace();
            return;
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493753};
    }
}
