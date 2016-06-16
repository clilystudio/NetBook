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

public class BookPostListFragment extends Fragment {
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
        this.d.setVisibility(View.VISIBLE);
    }

    public final void c() {
        this.d.setVisibility(View.GONE);
        this.h.setVisibility(View.GONE);
        this.c.setVisibility(View.GONE);
        this.a.n();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_book_topic, viewGroup, false);
        this.h = view.findViewById(R.id.pb_loading);
        this.d = (TextView) view.findViewById(R.id.empty_text);
        this.c = layoutInflater.inflate(R.layout.loading_item, null);
        this.a = (PullToRefreshListView) view.findViewById(R.id.ptr_list);
        this.b = (ListView) this.a.h();
        this.b.addFooterView(this.c);
        if (a.j()) {
            this.b.setFooterDividersEnabled(false);
        }
        this.e = (FloatingActionButton) view.findViewById(R.id.fab);
        return view;
    }
}
