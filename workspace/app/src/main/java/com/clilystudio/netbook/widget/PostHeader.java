package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;

public class PostHeader extends LinearLayout {
    public PostHeader(Context context) {
        super(context);
        this.setOrientation(1);
        LayoutInflater.from(context).inflate(R.layout.post_header, (ViewGroup) this);
        this.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    }

    public final void a() {
        this.findViewById(R.id.post_detail_share).setOnClickListener(new ao(this));
    }

    public final void a(int n) {
        if (n < 2) {
            return;
        }
        int[] arrn = new int[]{R.id.vote_item_1, R.id.vote_item_2, R.id.vote_item_3, R.id.vote_item_4, R.id.vote_item_5, R.id.vote_item_6, R.id.vote_item_7};
        if (n >= 7) {
            n = 7;
        }
        for (int i = 0; i < n; ++i) {
            this.findViewById(arrn[i]).setVisibility(View.VISIBLE);
        }
        this.findViewById(arrn[n - 1]).findViewById(R.id.divider).setVisibility(View.GONE);
        this.findViewById(R.id.vote_total_layout).setVisibility(View.VISIBLE);
        this.findViewById(R.id.vote_divider).setVisibility(View.VISIBLE);
    }

    public final void a(boolean bl) {
        this.findViewById(R.id.post_detail_share).setVisibility(View.GONE);
    }

    public final void b() {
        this.findViewById(R.id.post_detail_more).setOnClickListener(new aq(this));
    }
}
