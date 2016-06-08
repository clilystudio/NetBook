package com.clilystudio.netbook.widget;

import android.widget.ImageView;
import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class TopicSectionItem$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, TopicSectionItem paramTopicSectionItem, Object paramObject) {
        paramTopicSectionItem.mIcon = ((ImageView) paramFinder.findRequiredView(paramObject, 2131493028, "field 'mIcon'"));
        paramTopicSectionItem.mLabel = ((TextView) paramFinder.findRequiredView(paramObject, 2131493515, "field 'mLabel'"));
    }

    public static void reset(TopicSectionItem paramTopicSectionItem) {
        paramTopicSectionItem.mIcon = null;
        paramTopicSectionItem.mLabel = null;
    }
}

