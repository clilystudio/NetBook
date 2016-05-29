package com.clilystudio.app.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.app.netbook.model.TocSummary;
import com.clilystudio.app.netbook.util.W;

public final class B extends W<TocSummary> {
    private final int a;
    private final int b;
    private int c = -1;

    public B(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903299);
        Resources localResources = paramLayoutInflater.getContext().getResources();
        this.a = localResources.getColor(2131427539);
        this.b = localResources.getColor(2131427399);
    }

    public final void a(int paramInt) {
        this.c = paramInt;
    }

    protected final int[] a() {
        return new int[]{2131493741, 2131493743, 2131493742, 2131493738, 2131493740};
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.B
 * JD-Core Version:    0.6.2
 */