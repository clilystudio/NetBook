package com.clilystudio.netbook.ui;

import android.util.Log;

import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

import java.util.List;

final class D
        implements IDataCallBack<TrackList> {
    private /* synthetic */ AudiobookInfoActivity a;

    D(AudiobookInfoActivity audiobookInfoActivity) {
        this.a = audiobookInfoActivity;
    }

    @Override
    public final void onError(int n, String string) {
        AudiobookInfoActivity.a(this.a, 2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        TrackList trackList = (TrackList) ximalayaResponse;
        Log.d("AudiobookInfoActivity", "success total count:" + trackList.getTotalCount() + " title:" + trackList.getAlbumTitle() + " smallUrl:" + trackList.getCoverUrlSmall());
        AudiobookInfoActivity.a(this.a, 1);
        AudiobookInfoActivity.e(this.a);
        List<Track> list = trackList.getTracks();
        AudiobookInfoActivity.h(this.a).setShowData(list, AudiobookInfoActivity.f(this.a), AudiobookInfoActivity.g(this.a));
        if (AudiobookInfoActivity.g(this.a) * AudiobookInfoActivity.i(this.a) >= AudiobookInfoActivity.j(this.a) && AudiobookInfoActivity.k(this.a)) {
            AudiobookInfoActivity.b(this.a, as.c());
            if (AudiobookInfoActivity.l(this.a)) {
                AudiobookInfoActivity.c(this.a, AudiobookInfoActivity.l(this.a));
                AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), true);
            } else {
                AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), false);
            }
            AudiobookInfoActivity.d(this.a, true);
        }
        if (AudiobookInfoActivity.g(this.a) * AudiobookInfoActivity.i(this.a) < AudiobookInfoActivity.j(this.a)) {
            AudiobookInfoActivity.n(this.a);
            AudiobookInfoActivity.d(this.a);
        }
    }
}
