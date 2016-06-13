package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class GameLayoutItemView$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameLayoutItemView gameLayoutItemView, Object object) {
        gameLayoutItemView.mImage = (GameImageView) butterKnife$Finder.findRequiredView(object, 2131493025, "field 'mImage'");
        gameLayoutItemView.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        gameLayoutItemView.mSubTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131493018, "field 'mSubTitle'");
        gameLayoutItemView.mAction = (GameDownloadButton) butterKnife$Finder.findRequiredView(object, 2131493705, "field 'mAction'");
    }

    public static void reset(GameLayoutItemView gameLayoutItemView) {
        gameLayoutItemView.mImage = null;
        gameLayoutItemView.mTitle = null;
        gameLayoutItemView.mSubTitle = null;
        gameLayoutItemView.mAction = null;
    }
}
