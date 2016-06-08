package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookHelpSummary;

final class ap
        implements AdapterView.OnItemClickListener {
    ap(BookHelpListActivity paramBookHelpListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - BookHelpListActivity.i(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < BookHelpListActivity.j(this.a).size())) {
            BookHelpSummary localBookHelpSummary = (BookHelpSummary) BookHelpListActivity.j(this.a).get(i);
            if (localBookHelpSummary != null) {
                Intent localIntent = new Intent(this.a, BookHelpActivity.class);
                localIntent.putExtra("extraBookHelpId", localBookHelpSummary.get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}

