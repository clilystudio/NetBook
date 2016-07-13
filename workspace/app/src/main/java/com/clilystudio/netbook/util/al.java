package com.clilystudio.netbook.util;

import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;

public abstract class al extends BaseAdapter {
    private View[] a;

    protected final View a(int n, boolean bl) {
        View view = this.a[n];
        if (view != null) {
            if (bl) {
                view.setVisibility(View.GONE);
            } else {
                view.setVisibility(View.VISIBLE);
            }
        }
        return view;
    }

    protected final View a(View view, int[] arrn) {
        this.a = new View[arrn.length];
        for (int i = 0; i < arrn.length; ++i) {
            this.a[i] = view.findViewById(arrn[i]);
        }
        view.setTag(this.a);
        return view;
    }

    protected final TextView a(int n, CharSequence charSequence) {
        TextView textView = (TextView) this.a[n];
        textView.setText(charSequence);
        return textView;
    }

    protected final <T> T a(int n) {
        return (T) this.a[n];
    }

    protected final void a(View view) {
        this.a = (View[]) view.getTag();
    }
}
