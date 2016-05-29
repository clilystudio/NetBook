package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.util.e;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.k
 * JD-Core Version:    0.6.2
 */