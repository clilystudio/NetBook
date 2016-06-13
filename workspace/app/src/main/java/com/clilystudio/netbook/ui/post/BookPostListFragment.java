package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class BookPostListFragment
        extends Fragment {
    protected PullToRefreshListView a;
    protected ListView b;
    protected View c;
    protected TextView d;
    protected FloatingActionButton e;
    protected String f;
    protected int g;
    private View h;

    public final String a() {
        if ((BookPostTabActivity) this.getActivity() != null) {
            return ((BookPostTabActivity) this.getActivity()).j();
        }
        return "";
    }

    public void b() {
        this.d.setVisibility(0);
    }

    public final void c() {
        this.d.setVisibility(8);
        this.h.setVisibility(8);
        this.c.setVisibility(8);
        this.a.n();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903211, viewGroup, false);
        this.h = view.findViewById(2131493085);
        this.d = (TextView) view.findViewById(2131493100);
        this.c = layoutInflater.inflate(2130903325, null);
        this.a = (PullToRefreshListView) view.findViewById(2131493099);
        this.b = (ListView) this.a.h();
        this.b.addFooterView(this.c);
        if (a.j()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.e = (FloatingActionButton) view.findViewById(2131493437);
        return view;
    }
}
