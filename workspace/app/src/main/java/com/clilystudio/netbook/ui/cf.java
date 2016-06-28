package com.clilystudio.netbook.ui;

import com.xiaomi.mistatistic.sdk.MiStatInterface;

final class cf implements cd {
    private /* synthetic */ ShareRemoveAdActivity a;

    cf(ShareRemoveAdActivity shareRemoveAdActivity) {
        this.a = shareRemoveAdActivity;
    }

    @Override
    public final void a(int n) {
        ShareRemoveAdActivity.a(this.a, n);
        MiStatInterface.recordCountEvent( "share_remove_channel_click", "" + n);
    }
}
