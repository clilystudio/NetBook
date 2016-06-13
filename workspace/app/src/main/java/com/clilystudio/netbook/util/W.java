package com.clilystudio.netbook.util;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class W<V>
        extends al {
    private static final Object[] a = new Object[0];
    private final LayoutInflater b;
    private final int c;
    private final int[] d;
    private Object[] e;

    public W(Activity activity, int n) {
        this(activity.getLayoutInflater(), 2130903289);
    }

    public W(LayoutInflater layoutInflater, int n) {
        this.b = layoutInflater;
        this.c = n;
        this.e = a;
        this.d = this.a();
    }

    protected final void a(int n, View view, V v) {
        this.a(view);
        this.a(n, v);
    }

    protected abstract void a(int var1, V var2);

    public final void a(Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            this.a(collection.toArray());
            return;
        }
        this.a(a);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(Object[] arrobject) {
        this.e = arrobject != null ? arrobject : a;
        this.notifyDataSetChanged();
    }

    protected abstract int[] a();

    protected final List<V> c() {
        return Arrays.asList(this.e);
    }

    @Override
    public int getCount() {
        return this.e.length;
    }

    public V getItem(int n) {
        return (V) this.e[n];
    }

    @Override
    public long getItemId(int n) {
        return this.e[n].hashCode();
    }

    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = super.a(this.b.inflate(this.c, null), this.d);
        }
        this.a(n, view, this.getItem(n));
        return view;
    }
}
