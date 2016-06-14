package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.BookHelpSummary;

final class ap implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookHelpListActivity a;

    ap(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        BookHelpSummary bookHelpSummary;
        int n2 = n - BookHelpListActivity.i(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < BookHelpListActivity.j(this.a).size() && (bookHelpSummary = (BookHelpSummary) BookHelpListActivity.j(this.a).get(n2)) != null) {
            Intent intent = new Intent(this.a, BookHelpActivity.class);
            intent.putExtra("extraBookHelpId", bookHelpSummary.get_id());
            this.a.startActivity(intent);
        }
    }
}
