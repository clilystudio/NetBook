package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

import java.util.ArrayList;
import java.util.List;

public final class SearchActivity$SearchPromptAdapter
        extends BaseAdapter
        implements AdapterView.OnItemClickListener,
        Filterable {
    final /* synthetic */ SearchActivity a;
    private List<String> b;
    private bQ c;

    public SearchActivity$SearchPromptAdapter(SearchActivity searchActivity) {
        this.a = searchActivity;
        this.b = new ArrayList<String>();
    }

    static /* synthetic */ List a(SearchActivity$SearchPromptAdapter searchActivity$SearchPromptAdapter) {
        return searchActivity$SearchPromptAdapter.b;
    }

    static /* synthetic */ List a(SearchActivity$SearchPromptAdapter searchActivity$SearchPromptAdapter, List list) {
        searchActivity$SearchPromptAdapter.b = list;
        return list;
    }

    @Override
    public final int getCount() {
        return this.b.size();
    }

    @Override
    public final Filter getFilter() {
        if (this.c == null) {
            this.c = new bQ(this, 0);
        }
        return this.c;
    }

    @Override
    public final Object getItem(int n) {
        if (n >= 0 && n < this.b.size()) {
            return this.b.get(n);
        }
        return null;
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2 = this.a.getLayoutInflater().inflate(2130903303, viewGroup, false);
        SearchActivity$SearchPromptAdapter$ViewHolder searchActivity$SearchPromptAdapter$ViewHolder = new SearchActivity$SearchPromptAdapter$ViewHolder(this, view2);
        if (n >= 0 && n < this.b.size()) {
            searchActivity$SearchPromptAdapter$ViewHolder.label.setText(this.b.get(n));
        }
        return view2;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        SearchActivity.k(this.a).setVisibility(8);
        if (n >= 0 && n < this.b.size()) {
            String string = this.b.get(n);
            SearchActivity.f(this.a).setTextByCode(string);
            SearchActivity.b(this.a, true);
        }
    }
}
