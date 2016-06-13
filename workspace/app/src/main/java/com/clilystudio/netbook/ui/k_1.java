package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

final class k
        implements IDataCallBack<TrackList> {
    private /* synthetic */ AudioBookPlayActivity a;

    k(AudioBookPlayActivity audioBookPlayActivity) {
        this.a = audioBookPlayActivity;
    }

    @Override
    public final void onError(int n, String string) {
        AudioBookPlayActivity.q(this.a);
        if (AudioBookPlayActivity.r(this.a) <= 0) {
            AudioBookPlayActivity.a(this.a, 1);
        }
        AudioBookPlayActivity.c(this.a, false);
        e.a((Context) this.a, "\u66f4\u65b0\u5217\u8868\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u91cd\u8bd5");
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        TrackList trackList = (TrackList) ximalayaResponse;
        if (AudioBookPlayActivity.i(this.a) == null || AudioBookPlayActivity.i(this.a).size() == 0) {
            this.a.a(trackList);
        } else {
            AudioBookPlayActivity.i(this.a).addAll(trackList.getTracks());
            AudioBookPlayActivity.j(this.a);
            if (AudioBookPlayActivity.i(this.a).size() > AudioBookPlayActivity.k(this.a)) {
                AudioBookPlayActivity.b(this.a, true);
                AudioBookPlayActivity.a(this.a, (Track) AudioBookPlayActivity.i(this.a).get(AudioBookPlayActivity.k(this.a)));
            }
        }
        AudioBookPlayActivity.l(this.a);
        AudioBookPlayActivity.c(this.a, false);
        if (AudioBookPlayActivity.i(this.a).size() <= AudioBookPlayActivity.k(this.a)) {
            AudioBookPlayActivity.m(this.a);
            AudioBookPlayActivity.n(this.a);
        } else if (!AudioBookPlayActivity.o(this.a)) {
            AudioBookPlayActivity.p(this.a);
        }
        if (AudioBookPlayActivity.o(this.a)) {
            AudioBookPlayActivity.a(this.a, false);
        }
    }
}
