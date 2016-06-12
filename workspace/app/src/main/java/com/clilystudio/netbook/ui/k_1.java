package com.clilystudio.netbook.ui;

import android.content.Context;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

import java.util.Collection;

final class k implements IDataCallBack {

    private AudioBookPlayActivity a;

    k(AudioBookPlayActivity AudioBookPlayActivity1) {
        a = AudioBookPlayActivity1;
    }

    public final void onError(int int1, String String2) {
        AudioBookPlayActivity.q(a);
        if (AudioBookPlayActivity.r(a) <= 0)
            AudioBookPlayActivity.a(a, 1);
        AudioBookPlayActivity.c(a, false);
        e.a((Context) a, "\u66F4\u65B0\u5217\u8868\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u91CD\u8BD5");
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1) {
        TrackList TrackList2 = (TrackList) XimalayaResponse1;

        if (AudioBookPlayActivity.i(a) == null || AudioBookPlayActivity.i(a).size() == 0)
            a.a(TrackList2);
        else {
            AudioBookPlayActivity.i(a).addAll((Collection) TrackList2.getTracks());
            AudioBookPlayActivity.j(a);
            if (AudioBookPlayActivity.i(a).size() > AudioBookPlayActivity.k(a)) {
                AudioBookPlayActivity.b(a, true);
                AudioBookPlayActivity.a(a, (Track) AudioBookPlayActivity.i(a).get(AudioBookPlayActivity.k(a)));
            }
        }
        AudioBookPlayActivity.l(a);
        AudioBookPlayActivity.c(a, false);
        if (AudioBookPlayActivity.i(a).size() <= AudioBookPlayActivity.k(a)) {
            AudioBookPlayActivity.m(a);
            AudioBookPlayActivity.n(a);
        } else if (!com.clilystudio.netbook.ui.AudioBookPlayActivity.o(a))
            AudioBookPlayActivity.p(a);
        if (AudioBookPlayActivity.o(a))
            AudioBookPlayActivity.a(a, false);
    }
}
