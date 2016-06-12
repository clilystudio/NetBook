package com.clilystudio.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;

final class u implements IDataCallBack {

    private AudiobookCategoryActivity a;

    u(AudiobookCategoryActivity AudiobookCategoryActivity1) {
        a = AudiobookCategoryActivity1;
    }

    public final void onError(int int1, String String2) {
        AudiobookCategoryActivity.a(a, 2);
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1) {
        TagList TagList2 = (TagList) XimalayaResponse1;

        AudiobookCategoryActivity.a(a, 1);
        AudiobookCategoryActivity.a(a, TagList2);
    }
}
