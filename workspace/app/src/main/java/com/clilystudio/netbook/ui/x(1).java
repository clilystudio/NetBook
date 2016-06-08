package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.album.AlbumList;

final class x
        implements IDataCallBack<AlbumList> {
    x(AudiobookCategoryListActivity paramAudiobookCategoryListActivity, boolean paramBoolean) {
    }

    public final void onError(int paramInt, String paramString) {
        AudiobookCategoryListActivity.b(this.b).setVisibility(8);
        if (this.a) {
            this.b.h();
            return;
        }
        e.a(this.b, "加载失败，请检查网络或稍后再试");
    }
}

