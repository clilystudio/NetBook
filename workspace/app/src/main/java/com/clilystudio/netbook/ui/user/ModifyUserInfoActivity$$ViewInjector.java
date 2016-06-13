package com.clilystudio.netbook.ui.user;

import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife$Finder;

public class ModifyUserInfoActivity$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, ModifyUserInfoActivity modifyUserInfoActivity, Object object) {
        modifyUserInfoActivity.mPortrait = (CircularSmartImageView) butterKnife$Finder.findRequiredView(object, 2131493146, "field 'mPortrait'");
        modifyUserInfoActivity.mNameView = (TextView) butterKnife$Finder.findRequiredView(object, 2131492928, "field 'mNameView'");
        modifyUserInfoActivity.mGenderView = (TextView) butterKnife$Finder.findRequiredView(object, 2131493149, "field 'mGenderView'");
        modifyUserInfoActivity.mPortraitSection = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493145, "field 'mPortraitSection'");
        modifyUserInfoActivity.mNameSection = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493147, "field 'mNameSection'");
        modifyUserInfoActivity.mGenderSection = (LinearLayout) butterKnife$Finder.findRequiredView(object, 2131493148, "field 'mGenderSection'");
    }

    public static void reset(ModifyUserInfoActivity modifyUserInfoActivity) {
        modifyUserInfoActivity.mPortrait = null;
        modifyUserInfoActivity.mNameView = null;
        modifyUserInfoActivity.mGenderView = null;
        modifyUserInfoActivity.mPortraitSection = null;
        modifyUserInfoActivity.mNameSection = null;
        modifyUserInfoActivity.mGenderSection = null;
    }
}
