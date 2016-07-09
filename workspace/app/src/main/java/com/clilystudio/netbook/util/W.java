package com.clilystudio.netbook.util;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class W<V> extends al {
    private final V[] a = (V[])new Object[0];
    private final LayoutInflater b;
    private final int c;
    private final int[] d;
    private V[] e;

    public W(Activity activity) {
        this(activity.getLayoutInflater(), R.layout.list_item_resource_download);
    }

    public W(Activity activity, int n) {
        this(activity.getLayoutInflater(), n);
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

    public final void a(Collection<V> collection) {
        if (collection != null && !collection.isEmpty()) {
            this.a((V[])collection.toArray());
            return;
        }
        this.a(a);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(V[] arrobject) {
        this.e = arrobject != null ? arrobject : a;
        this.notifyDataSetChanged();
    }

    protected abstract int[] a();

    public final List<V> c() {
        return Arrays.asList(this.e);
    }

    @Override
    public int getCount() {
        return this.e.length;
    }

    public V getItem(int n) {
        return this.e[n];
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
