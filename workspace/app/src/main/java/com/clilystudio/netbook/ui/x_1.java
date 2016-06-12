package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.AlbumList;

import java.util.Collection;
import java.util.List;

final class x implements IDataCallBack {

    private boolean a;
    private AudiobookCategoryListActivity b;
    x(AudiobookCategoryListActivity AudiobookCategoryListActivity1, boolean boolean2) {
        b = AudiobookCategoryListActivity1;
        a = boolean2;
    }

    public final void onError(int int1, String String2) {
        AudiobookCategoryListActivity.b(b).setVisibility(8);
        if (a)
            b.h();
        else
            com.clilystudio.netbook.util.e.a((Activity) b, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5");
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1) {
        AlbumList AlbumList2 = (AlbumList) XimalayaResponse1;
        int int3;
        Object Object4;

        AudiobookCategoryListActivity.b(b).setVisibility(8);
        int3 = AlbumList2.getTotalPage();
        Object4 = AlbumList2.getAlbums();
        if (((List) Object4).size() > 0) {
            b.f();
            AudiobookCategoryListActivity.a(b).addAll((Collection) Object4);
            AudiobookCategoryListActivity.c(b).a((Collection) AudiobookCategoryListActivity.a(b));
            if (AudiobookCategoryListActivity.d(b) < int3) {
                AudiobookCategoryListActivity.e(b).setOnLastItemListener(AudiobookCategoryListActivity.f(b));
                AudiobookCategoryListActivity.g(b);
                return;
            }
        } else if (a) {
            b.g();
            return;
        }
        AudiobookCategoryListActivity.e(b).setOnLastItemListener(null);
    }
}
