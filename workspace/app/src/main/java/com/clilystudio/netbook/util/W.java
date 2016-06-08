package com.clilystudio.netbook.util;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class W<V> extends al {
    private static final Object[] a = new Object[0];
    private final LayoutInflater b;
    private final int c;
    private final int[] d;
    private Object[] e;

    public W(Activity paramActivity, int paramInt) {
        this(paramActivity.getLayoutInflater(), 2130903289);
    }

    public W(LayoutInflater paramLayoutInflater, int paramInt) {
        this.b = paramLayoutInflater;
        this.c = paramInt;
        this.e = a;
        this.d = a();
    }

    protected final void a(int paramInt, View paramView, V paramV) {
        a(paramView);
        a(paramInt, paramV);
    }

    protected abstract void a(int paramInt, V paramV);

    public final void a(Collection<?> paramCollection) {
        if ((paramCollection != null) && (!paramCollection.isEmpty())) {
            a(paramCollection.toArray());
            return;
        }
        a(a);
    }

    public final void a(Object[] paramArrayOfObject) {
        if (paramArrayOfObject != null) ;
        for (this.e = paramArrayOfObject; ; this.e = a) {
            notifyDataSetChanged();
            return;
        }
    }

    protected abstract int[] a();

    protected final List<V> c() {
        return Arrays.asList(this.e);
    }

    public int getCount() {
        return this.e.length;
    }

    public V getItem(int paramInt) {
        return this.e[paramInt];
    }

    public long getItemId(int paramInt) {
        return this.e[paramInt].hashCode();
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        if (paramView == null)
            paramView = super.a(this.b.inflate(this.c, null), this.d);
        a(paramInt, paramView, getItem(paramInt));
        return paramView;
    }
}

