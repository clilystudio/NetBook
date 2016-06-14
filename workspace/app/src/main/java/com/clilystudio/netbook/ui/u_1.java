package com.clilystudio.netbook.ui;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;

final class u implements IDataCallBack<TagList> {
    private /* synthetic */ AudiobookCategoryActivity a;

    u(AudiobookCategoryActivity audiobookCategoryActivity) {
        this.a = audiobookCategoryActivity;
    }

    @Override
    public final void onError(int n, String string) {
        AudiobookCategoryActivity.a(this.a, 2);
    }

    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        TagList tagList = (TagList) ximalayaResponse;
        AudiobookCategoryActivity.a(this.a, 1);
        AudiobookCategoryActivity.a(this.a, tagList);
    }
}
