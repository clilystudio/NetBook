package com.clilystudio.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

final class D
        implements IDataCallBack<TrackList> {
    D(AudiobookInfoActivity paramAudiobookInfoActivity) {
    }

    public final void onError(int paramInt, String paramString) {
        AudiobookInfoActivity.a(this.a, 2);
    }
}
