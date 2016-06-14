package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.CategoryBook;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class c extends W<CategoryBook> {
    private Resources a;

    public c(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903293);
        this.a = layoutInflater.getContext().getResources();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        CategoryBook categoryBook = (CategoryBook) object;
        try {
            ((CoverView) this.a(0, CoverView.class)).setImageUrl(categoryBook.getFullCover(), 2130837766);
            this.a(1, categoryBook.getTitle());
            this.a(2, categoryBook.getShortIntro());
            Resources resources = this.a;
            Object[] arrobject = new Object[]{categoryBook.getLatelyFollower()};
            this.a(3, resources.getString(2131034387, arrobject));
            float f = categoryBook.getRetentionRatio();
            if (f > 0.0f) {
                Resources resources2 = this.a;
                Object[] arrobject2 = new Object[]{Float.valueOf(f)};
                this.a(4, resources2.getString(2131034470, arrobject2));
                this.a(4, false);
                this.a(5, false);
            } else {
                this.a(4, true);
                this.a(5, true);
            }
            this.a(6, categoryBook.getAuthor());
            this.a(7, categoryBook.getMajorCate());
            return;
        } catch (Exception var4_9) {
            var4_9.printStackTrace();
            return;
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493717, 2131493719, 2131493718, 2131493715, 2131493716};
    }
}
