package com.clilystudio.app.netbook.reader.txt;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;

import com.clilystudio.app.netbook.util.W;

final class R extends W<T>
        implements AdapterView.OnItemClickListener {
    public R(ScanTxtFileActivity paramScanTxtFileActivity, LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903266);
    }

    private static void a(ImageView paramImageView, boolean paramBoolean) {
        if (paramBoolean) {
            paramImageView.setImageResource(2130837820);
            paramImageView.setContentDescription("选中");
            return;
        }
        paramImageView.setImageResource(2130837818);
        paramImageView.setContentDescription("未选中");
    }

    protected final int[] a() {
        return new int[]{R.id.title, 2131493040, 2131493625};
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        ((T) c().get(paramInt)).c();
        ScanTxtFileActivity.a(this.a).notifyDataSetChanged();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.R
 * JD-Core Version:    0.6.2
 */