package com.clilystudio.netbook.ui.home;

import android.util.Log;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

final class o
        implements IDataCallBack<BatchAlbumList> {
    o(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void onError(int paramInt, String paramString) {
        Log.e(HomeShelfFragment.f(), paramString);
    }
}

