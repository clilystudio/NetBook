package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.widget.ImageView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class a
        extends W<BookReadRecord> {
    private int a = -1;

    public a(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903263);
    }

    public final void a(int n) {
        this.a = n;
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookReadRecord bookReadRecord = (BookReadRecord) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookReadRecord.getFullCover(), 2130837766);
        this.a(1, bookReadRecord.getTitle());
        ImageView imageView = (ImageView) this.a(2, ImageView.class);
        if (this.a == n) {
            imageView.setImageResource(2130837820);
            return;
        }
        imageView.setImageResource(2130837818);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493612, 2131493613, 2131493614};
    }

    public final int b() {
        return this.a;
    }
}
