package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

import java.util.Date;

public final class B extends W<TocSummary> {
    private final int a;
    private final int b;
    private int c = -1;

    public B(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903299);
        Resources resources = layoutInflater.getContext().getResources();
        this.a = resources.getColor(2131427539);
        this.b = resources.getColor(2131427399);
    }

    public final void a(int n) {
        this.c = n;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
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
        return new int[]{2131493741, 2131493743, 2131493742, 2131493738, 2131493740};
    }
}
