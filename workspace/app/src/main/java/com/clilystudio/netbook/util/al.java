package com.clilystudio.netbook.util;

import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;

public abstract class al extends BaseAdapter {
    private ar a = new ar();

    /*
     * Enabled aggressive block sorting
     */
    protected final View a(int n, boolean bl) {
        View view = this.a.a[n];
        if (view == null) return view;
        {
            if (bl) {
                if (8 == view.getVisibility()) return view;
                {
                    view.setVisibility(8);
                    return view;
                }
            } else {
                if (view.getVisibility() == 0) return view;
                {
                    view.setVisibility(0);
                    return view;
                }
            }
        }
    }

    protected final View a(View view, int[] arrn) {
        ar ar2 = this.a;
        View[] arrview = new View[arrn.length];
        for (int i = 0; i < arrn.length; ++i) {
            arrview[i] = view.findViewById(arrn[i]);
        }
        view.setTag(arrview);
        ar2.a = arrview;
        return view;
    }

    protected final TextView a(int n, CharSequence charSequence) {
        TextView textView = (TextView) this.a.a[n];
        textView.setText(charSequence);
        return textView;
    }

    protected final <T> T a(int n, Class<T> class_) {
        return (T) this.a.a[n];
    }

    protected final void a(View view) {
        this.a.a = (View[]) view.getTag();
    }
}
