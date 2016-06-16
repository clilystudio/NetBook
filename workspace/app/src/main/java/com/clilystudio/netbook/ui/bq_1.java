package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.AbsDownloadButton;

final class bq extends W<AppItem> {
    private /* synthetic */ MysteryActivity a;

    public bq(MysteryActivity mysteryActivity, Activity activity) {
        this.a = mysteryActivity;
        super(activity, R.layout.list_item_mystery);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        AppItem appItem = (AppItem) object;
        ((SmartImageView) this.a(0, SmartImageView.class)).setImageUrl(appItem.getFullIcon());
        this.a(1, appItem.getName());
        this.a(2, a.c(appItem.getSize()));
        AbsDownloadButton absDownloadButton = (AbsDownloadButton) this.a(3, AbsDownloadButton.class);
        absDownloadButton.setAppItem(appItem);
        absDownloadButton.a(appItem.getDownloadStatus());
        if (MysteryActivity.e(this.a) == 1) {
            absDownloadButton.setOnClickListener(null);
        }
        this.a(4, appItem.getActivateRequire());
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.image, R.id.name, R.id.hot_flag, R.id.action, R.id.active_require};
    }
}
