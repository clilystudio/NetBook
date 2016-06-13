package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class TopicSectionItem$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, TopicSectionItem topicSectionItem, Object object) {
        topicSectionItem.mIcon = (ImageView) butterKnife$Finder.findRequiredView(object, 2131493028, "field 'mIcon'");
        topicSectionItem.mLabel = (TextView) butterKnife$Finder.findRequiredView(object, 2131493515, "field 'mLabel'");
    }

    public static void reset(TopicSectionItem topicSectionItem) {
        topicSectionItem.mIcon = null;
        topicSectionItem.mLabel = null;
    }
}
