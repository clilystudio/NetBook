package com.clilystudio.netbook.util;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class W extends al {

    private static final Object[] a = new Object[0];
    private LayoutInflater b;     // final access specifier removed
    private int c;     // final access specifier removed
    private int[] d;     // final access specifier removed
    private Object[] e;
    public W(LayoutInflater LayoutInflater1, int int2) {
        b = LayoutInflater1;
        c = int2;
        e = a;
        d = a();
    }

    public W(Activity Activity1, int int2) {
        this(Activity1.getLayoutInflater(), 2130903289);
    }

    protected final void a(int int1, View View2, Object Object3) {
        a(View2);
        a(int1, Object3);
    }

    protected abstract void a(int int1, Object Object2);

    public final void a(Collection Collection1) {
        if (Collection1 != null && !Collection1.isEmpty())
            a(Collection1.toArray());
        else
            a(a);
    }

    public final void a(Object[] Object_1darray1) {
        if (Object_1darray1 != null)
            e = Object_1darray1;
        else
            e = a;
        notifyDataSetChanged();
    }

    protected abstract int[] a();

    protected final List c() {
        return Arrays.asList(e);
    }

    public int getCount() {
        return e.length;
    }

    public Object getItem(int int1) {
        return e[int1];
    }

    public long getItemId(int int1) {
        return (long) e[int1].hashCode();
    }

    public View getView(int int1, View View2, ViewGroup ViewGroup3) {
        if (View2 == null)
            View2 = super.a(b.inflate(c, null), d);
        a(int1, View2, getItem(int1));
        return View2;
    }
}
