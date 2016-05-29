package com.clilystudio.app.netbook.ui.user;

import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.app.netbook.ui.CircularSmartImageView;

import butterknife.ButterKnife.Finder;

public class ModifyUserInfoActivity$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, ModifyUserInfoActivity paramModifyUserInfoActivity, Object paramObject) {
        paramModifyUserInfoActivity.mPortrait = ((CircularSmartImageView) paramFinder.findRequiredView(paramObject, 2131493146, "field 'mPortrait'"));
        paramModifyUserInfoActivity.mNameView = ((TextView) paramFinder.findRequiredView(paramObject, 2131492928, "field 'mNameView'"));
        paramModifyUserInfoActivity.mGenderView = ((TextView) paramFinder.findRequiredView(paramObject, 2131493149, "field 'mGenderView'"));
        paramModifyUserInfoActivity.mPortraitSection = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493145, "field 'mPortraitSection'"));
        paramModifyUserInfoActivity.mNameSection = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493147, "field 'mNameSection'"));
        paramModifyUserInfoActivity.mGenderSection = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493148, "field 'mGenderSection'"));
    }

    public static void reset(ModifyUserInfoActivity paramModifyUserInfoActivity) {
        paramModifyUserInfoActivity.mPortrait = null;
        paramModifyUserInfoActivity.mNameView = null;
        paramModifyUserInfoActivity.mGenderView = null;
        paramModifyUserInfoActivity.mPortraitSection = null;
        paramModifyUserInfoActivity.mNameSection = null;
        paramModifyUserInfoActivity.mGenderSection = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ModifyUserInfoActivity..ViewInjector
 * JD-Core Version:    0.6.2
 */