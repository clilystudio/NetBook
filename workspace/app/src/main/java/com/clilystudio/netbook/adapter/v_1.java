package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.MhdInfo;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class v extends W<MhdInfo> {
    public v(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903285);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        MhdInfo mhdInfo = (MhdInfo) object;
        try {
            ((CoverView) this.a(0, CoverView.class)).setImageUrl(mhdInfo.getCoverurl(), 2130837766);
            this.a(1, mhdInfo.getName());
            this.a(2, mhdInfo.getDescription());
            this.a(3, mhdInfo.getClickrate() + " \u4eba\u5728\u770b");
            return;
        } catch (Exception var4_4) {
            var4_4.printStackTrace();
            return;
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493684, 2131493685, 2131493686, 2131493688};
    }
}
