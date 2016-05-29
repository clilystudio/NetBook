package com.clilystudio.app.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;

final class u
        implements IDataCallBack<TagList> {
    u(AudiobookCategoryActivity paramAudiobookCategoryActivity) {
    }

    public final void onError(int paramInt, String paramString) {
        AudiobookCategoryActivity.a(this.a, 2);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.u
 * JD-Core Version:    0.6.2
 */