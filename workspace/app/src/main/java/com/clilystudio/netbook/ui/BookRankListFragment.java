package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.TextView;

import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.widget.ScrollLoadListView;

import java.util.ArrayList;
import java.util.List;

public class BookRankListFragment extends Fragment {

    protected com.clilystudio.netbook.adapter.g a;
    private View b;
    private View c;
    private View d;
    private TextView e;
    private aR g;
    private List f = new ArrayList(100);

    public static BookRankListFragment a(String String1, String String2) {
        BookRankListFragment BookRankListFragment3 = new BookRankListFragment();
        Bundle Bundle4 = new Bundle();

        Bundle4.putString("type", String2);
        Bundle4.putString("book_list_id", String1);
        BookRankListFragment3.setArguments(Bundle4);
        return BookRankListFragment3;
    }

    static void a(BookRankListFragment BookRankListFragment1) {
        BookRankListFragment1.a();
    }

    static View b(BookRankListFragment BookRankListFragment1) {
        return BookRankListFragment1.b;
    }

    static List c(BookRankListFragment BookRankListFragment1) {
        return BookRankListFragment1.f;
    }

    private void a() {
        g = new aR(this, (byte) 0);
        g.b(new String[0]);
    }

    protected final void a(int int1) {
        if (int1 >= 0 && int1 < a.getCount()) {
            BookRankDetail BookRankDetail2 = (BookRankDetail) a.getItem(int1);

            startActivity(BookInfoActivity.a((Context) getActivity(), BookRankDetail2.get_id()));
        }
    }

    protected final void b(int int1) {
        switch (int1) {
            default:
                return;
            case 1:
                c.setVisibility(8);
                d.setVisibility(8);
                e.setVisibility(8);
                return;
            case 0:
                c.setVisibility(0);
                d.setVisibility(8);
                e.setVisibility(8);
                return;
            case 2:
                c.setVisibility(8);
                d.setVisibility(0);
                e.setVisibility(8);
                return;
            case 3:
                c.setVisibility(8);
                d.setVisibility(8);
                e.setVisibility(0);
                return;
        }
    }

    public void onActivityCreated(Bundle Bundle1) {
        super.onActivityCreated(Bundle1);
        if (getArguments().getString("book_list_id") == null)
            b(3);
        else
            a();
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View5;
        ScrollLoadListView ScrollLoadListView6;

        super.onCreateView(LayoutInflater1, ViewGroup2, Bundle3);
        View5 = LayoutInflater1.inflate(2130903210, ViewGroup2, false);
        c = View5.findViewById(2131493081);
        e = (TextView) View5.findViewById(2131493080);
        d = View5.findViewById(2131493082);
        d.setOnClickListener((View$OnClickListener) new aP(this));
        a = new com.clilystudio.netbook.adapter.g(getActivity().getLayoutInflater());
        ScrollLoadListView6 = (ScrollLoadListView) View5.findViewById(2131493135);
        ScrollLoadListView6.setAdapter((ListAdapter) a);
        ScrollLoadListView6.setOnItemClickListener((AdapterView$OnItemClickListener) new aQ(this));
        b = LayoutInflater1.inflate(2130903325, null);
        ScrollLoadListView6.addFooterView(b);
        b.setVisibility(8);
        return View5;
    }
}
