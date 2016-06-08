package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

import java.util.ArrayList;
import java.util.List;

public final class SearchActivity$SearchPromptAdapter extends BaseAdapter
        implements AdapterView.OnItemClickListener, Filterable {
    private List<String> b = new ArrayList();
    private bQ c;

    public SearchActivity$SearchPromptAdapter(SearchActivity paramSearchActivity) {
    }

    public final int getCount() {
        return this.b.size();
    }

    public final Filter getFilter() {
        if (this.c == null)
            this.c = new bQ(this, 0);
        return this.c;
    }

    public final Object getItem(int paramInt) {
        if ((paramInt >= 0) && (paramInt < this.b.size()))
            return this.b.get(paramInt);
        return null;
    }

    public final long getItemId(int paramInt) {
        return paramInt;
    }

    public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        View localView = this.a.getLayoutInflater().inflate(2130903303, paramViewGroup, false);
        SearchActivity.SearchPromptAdapter.ViewHolder localViewHolder = new SearchActivity.SearchPromptAdapter.ViewHolder(this, localView);
        if ((paramInt >= 0) && (paramInt < this.b.size()))
            localViewHolder.label.setText((CharSequence) this.b.get(paramInt));
        return localView;
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        SearchActivity.k(this.a).setVisibility(8);
        if ((paramInt >= 0) && (paramInt < this.b.size())) {
            String str = (String) this.b.get(paramInt);
            SearchActivity.f(this.a).setTextByCode(str);
            SearchActivity.b(this.a, true);
        }
    }
}

