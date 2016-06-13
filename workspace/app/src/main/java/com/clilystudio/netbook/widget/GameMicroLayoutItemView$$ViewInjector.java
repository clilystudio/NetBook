package com.clilystudio.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class GameMicroLayoutItemView$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, GameMicroLayoutItemView gameMicroLayoutItemView, Object object) {
        gameMicroLayoutItemView.mImage = (GameImageView) butterKnife$Finder.findRequiredView(object, 2131493025, "field 'mImage'");
        gameMicroLayoutItemView.mTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'mTitle'");
        gameMicroLayoutItemView.mSubTitle = (TextView) butterKnife$Finder.findRequiredView(object, 2131493018, "field 'mSubTitle'");
        gameMicroLayoutItemView.mAction = (GameDownloadButton) butterKnife$Finder.findRequiredView(object, 2131493705, "field 'mAction'");
    }

    public static void reset(GameMicroLayoutItemView gameMicroLayoutItemView) {
        gameMicroLayoutItemView.mImage = null;
        gameMicroLayoutItemView.mTitle = null;
        gameMicroLayoutItemView.mSubTitle = null;
        gameMicroLayoutItemView.mAction = null;
    }
}
