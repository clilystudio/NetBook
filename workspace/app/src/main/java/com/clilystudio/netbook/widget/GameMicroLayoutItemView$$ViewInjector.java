package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class GameMicroLayoutItemView$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameMicroLayoutItemView paramGameMicroLayoutItemView, Object paramObject) {
        paramGameMicroLayoutItemView.mImage = ((GameImageView) paramFinder.findRequiredView(paramObject, 2131493025, "field 'mImage'"));
        paramGameMicroLayoutItemView.mTitle = ((TextView) paramFinder.findRequiredView(paramObject, 2131492936, "field 'mTitle'"));
        paramGameMicroLayoutItemView.mSubTitle = ((TextView) paramFinder.findRequiredView(paramObject, 2131493018, "field 'mSubTitle'"));
        paramGameMicroLayoutItemView.mAction = ((GameDownloadButton) paramFinder.findRequiredView(paramObject, 2131493705, "field 'mAction'"));
    }

    public static void reset(GameMicroLayoutItemView paramGameMicroLayoutItemView) {
        paramGameMicroLayoutItemView.mImage = null;
        paramGameMicroLayoutItemView.mTitle = null;
        paramGameMicroLayoutItemView.mSubTitle = null;
        paramGameMicroLayoutItemView.mAction = null;
    }
}

