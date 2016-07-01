package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;

public class BookShelfFlagView extends TextView {
    private final Drawable b;
    private int a;

    public BookShelfFlagView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setVisibility(View.GONE);
        this.setTextColor(-1);
        this.setGravity(17);
        this.setTextSize(this.getResources().getDimensionPixelSize(R.dimen.shelf_flag_text));
        this.b = this.getResources().getDrawable(R.drawable.shelf_red_circle);
    }

    private void a() {
        Resources resources = this.getResources();
        int n = resources.getDimensionPixelSize(R.dimen.bookshelf_flag_width);
        int n2 = resources.getDimensionPixelSize(R.dimen.bookshelf_flag_height);
        ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
        layoutParams.width = n;
        layoutParams.height = n2;
    }

    @Override
    protected void onMeasure(int n, int n2) {
        if (this.a != 3) {
            super.onMeasure(n, n2);
            return;
        }
        this.setMeasuredDimension(this.b.getIntrinsicWidth(), this.b.getIntrinsicHeight());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setType(int n) {
        this.a = n;
        switch (this.a) {
            case 1: {
                this.a();
                this.setBackgroundResource(R.drawable.shelf_prom_btn);
                this.setText("推广");
                break;
            }
            case 2: {
                this.a();
                this.setBackgroundResource(R.drawable.shelf_broadcast_btn);
                this.setText("公告");
                break;
            }
            case 3: {
                ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
                layoutParams.width = -2;
                layoutParams.height = -2;
                this.setText("");
                this.setBackgroundResource(R.drawable.shelf_red_circle);
                break;
            }
            case 4: {
                this.a();
                this.setBackgroundResource(R.drawable.shelf_feed_flag_bg);
                this.setText("待杀");
            }
        }
        if (this.a == 0) {
            this.setVisibility(INVISIBLE);
            return;
        }
        this.setVisibility(View.VISIBLE);
    }
}
