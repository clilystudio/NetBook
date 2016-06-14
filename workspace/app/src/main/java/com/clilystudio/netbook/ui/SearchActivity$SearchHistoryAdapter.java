package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

public final class SearchActivity$SearchHistoryAdapter extends BaseAdapter
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ SearchActivity a;

    public SearchActivity$SearchHistoryAdapter(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final int getCount() {
        return SearchActivity.l(this.a).size();
    }

    @Override
    public final Object getItem(int n) {
        return SearchActivity.l(this.a).get(n);
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2 = this.a.getLayoutInflater().inflate(2130903302, viewGroup, false);
        SearchActivity$SearchHistoryAdapter$ViewHolder searchActivity$SearchHistoryAdapter$ViewHolder = new SearchActivity$SearchHistoryAdapter$ViewHolder(this, view2);
        if (n >= 0 && n < SearchActivity.l(this.a).size()) {
            searchActivity$SearchHistoryAdapter$ViewHolder.word.setText((CharSequence) SearchActivity.l(this.a).get(n));
        }
        return view2;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        if (n >= 0 && n < SearchActivity.l(this.a).size()) {
            SearchActivity.a(this.a, (String) SearchActivity.l(this.a).get(n));
            b.a(this.a, "search_history_word_click", (String) SearchActivity.l(this.a).get(n));
        }
    }
}
