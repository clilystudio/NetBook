package com.clilystudio.netbook.adapter;

import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife.Finder;

public class NotificationAdapter$ViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, NotificationAdapter.ViewHolder paramViewHolder, Object paramObject) {
        paramViewHolder.mAvatar = ((CircularSmartImageView) paramFinder.findRequiredView(paramObject, 2131492899, "field 'mAvatar'"));
        paramViewHolder.mMainText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493712, "field 'mMainText'"));
        paramViewHolder.mSubText = ((TextView) paramFinder.findRequiredView(paramObject, 2131493713, "field 'mSubText'"));
    }

    public static void reset(NotificationAdapter.ViewHolder paramViewHolder) {
        paramViewHolder.mAvatar = null;
        paramViewHolder.mMainText = null;
        paramViewHolder.mSubText = null;
    }
}

