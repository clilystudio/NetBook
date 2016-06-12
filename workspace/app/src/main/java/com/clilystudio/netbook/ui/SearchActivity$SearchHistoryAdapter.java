package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.BaseAdapter;

import com.umeng.a.b;

public final class SearchActivity$SearchHistoryAdapter extends BaseAdapter implements AdapterView$OnItemClickListener {

    private SearchActivity a;

    public SearchActivity$SearchHistoryAdapter(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final int getCount() {
        return SearchActivity.l(a).size();
    }

    public final Object getItem(int int1) {
        return SearchActivity.l(a).get(int1);
    }

    public final long getItemId(int int1) {
        return (long) int1;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        View View4 = a.getLayoutInflater().inflate(2130903302, ViewGroup3, false);
        SearchActivity$SearchHistoryAdapter$ViewHolder ViewHolder5 = new SearchActivity$SearchHistoryAdapter$ViewHolder(this, View4);

        if (int1 >= 0 && int1 < SearchActivity.l(a).size())
            ViewHolder5.word.setText((CharSequence) SearchActivity.l(a).get(int1));
        return View4;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        if (int3 >= 0 && int3 < SearchActivity.l(a).size()) {
            SearchActivity.a(a, (String) SearchActivity.l(a).get(int3));
            b.a((Context) a, "search_history_word_click", (String) SearchActivity.l(a).get(int3));
        }
    }
}
