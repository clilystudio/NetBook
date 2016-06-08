package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

final class k
        implements IDataCallBack<TrackList> {
    k(AudioBookPlayActivity paramAudioBookPlayActivity) {
    }

    public final void onError(int paramInt, String paramString) {
        AudioBookPlayActivity.q(this.a);
        if (AudioBookPlayActivity.r(this.a) <= 0)
            AudioBookPlayActivity.a(this.a, 1);
        AudioBookPlayActivity.c(this.a, false);
        e.a(this.a, "更新列表失败，请检查网络或稍后重试");
    }
}

