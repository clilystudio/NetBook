package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class BaseLoadingFragment extends Fragment {
    private ViewGroup a;
    private View b;
    private View c;
    private View d;
    private View[] e;

    /*
     * Enabled aggressive block sorting
     */
    private void a(View view) {
        if (view != null) {
            view.setVisibility(View.VISIBLE);
            for (View view2 : this.e) {
                if (view == view2) continue;
                view2.setVisibility(View.GONE);
            }
        }
    }

    protected abstract int a();

    protected abstract void b();

    public final void c() {
        this.a(this.a);
    }

    public final void d() {
        this.a(this.d);
    }

    public final void e() {
        this.a(this.c);
    }

    public final void f() {
        this.a(this.b);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.activity_loading_base, viewGroup, false);
        this.a = (ViewGroup) view.findViewById(R.id.content);
        this.b = view.findViewById(R.id.common_list_pb);
        this.c = view.findViewById(R.id.common_list_error);
        this.d = view.findViewById(R.id.common_list_empty);
        LayoutInflater.from(this.getActivity()).inflate(this.a(), this.a);
        View[] arrview = new View[]{this.a, this.b, this.c, this.d};
        this.e = arrview;
        this.c.setOnClickListener(new ad(this));
        return view;
    }
}
