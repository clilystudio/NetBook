package com.clilystudio.netbook.reader.txt;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;

import com.clilystudio.netbook.util.W;

final class R_Clz extends W<T> implements AdapterView.OnItemClickListener {
    public R_Clz(ScanTxtFileActivity paramScanTxtFileActivity, LayoutInflater paramLayoutInflater) {
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
        return new int[]{2131492936, 2131493040, 2131493625};
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        ((T) c().get(paramInt)).c();
        ScanTxtFileActivity.a(this.a).notifyDataSetChanged();
    }
}
