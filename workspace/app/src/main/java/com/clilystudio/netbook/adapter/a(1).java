package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;

public final class a extends W<BookReadRecord> {
    private int a = -1;

    public a(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903263);
    }

    public final void a(int paramInt) {
        this.a = paramInt;
    }

    protected final int[] a() {
        return new int[]{2131493612, 2131493613, 2131493614};
    }

    public final int b() {
        return this.a;
    }
}

