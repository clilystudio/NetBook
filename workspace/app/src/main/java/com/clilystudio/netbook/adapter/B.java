package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

import java.util.Date;

public final class B extends W<TocSummary> {
    private final int a;
    private final int b;
    private int c = -1;

    public B(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_resource);
        Resources resources = layoutInflater.getContext().getResources();
        this.a = resources.getColor(R.color.third_text_normal);
        this.b = resources.getColor(R.color.deprecated_red);
    }

    public final void a(int n) {
        this.c = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, TocSummary object) {
        TocSummary tocSummary = (TocSummary) object;
        this.a(0, tocSummary.getHost());
        this.a(1, t.e((Date) tocSummary.getUpdated()));
        if (new Date().getTime() - tocSummary.getUpdated().getTime() < 3600000) {
            ((TextView) this.a(1, TextView.class)).setTextColor(this.b);
            ((ImageView) this.a(2, ImageView.class)).setImageLevel(1);
        } else {
            ((TextView) this.a(1, TextView.class)).setTextColor(this.a);
            ((ImageView) this.a(2, ImageView.class)).setImageLevel(0);
        }
        this.a(3, tocSummary.getLastChapter());
        if (this.c == n) {
            this.a(4, false);
            return;
        }
        this.a(4, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.tv_name, R.id.tv_updated, R.id.iv_ic_updated, R.id.tv_last_chapter, R.id.resource_list_item_last_select};
    }
}
