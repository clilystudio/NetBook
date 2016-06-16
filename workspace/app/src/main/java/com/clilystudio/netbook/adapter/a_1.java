package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.widget.ImageView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class a extends W<BookReadRecord> {
    private int a = -1;

    public a(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_add_review);
    }

    public final void a(int n) {
        this.a = n;
    }

    @Override
    protected final /* synthetic */ void a(int n, BookReadRecord object) {
        BookReadRecord bookReadRecord = (BookReadRecord) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookReadRecord.getFullCover(), R.drawable.cover_default);
        this.a(1, bookReadRecord.getTitle());
        ImageView imageView = (ImageView) this.a(2, ImageView.class);
        if (this.a == n) {
            imageView.setImageResource(R.drawable.green_tick_circle);
            return;
        }
        imageView.setImageResource(R.drawable.gray_tick_circle);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.add_review_cover, R.id.add_review_title, R.id.add_review_selected};
    }

    public final int b() {
        return this.a;
    }
}
