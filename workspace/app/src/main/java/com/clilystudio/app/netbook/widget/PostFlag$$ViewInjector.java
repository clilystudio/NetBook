package com.clilystudio.app.netbook.widget;

import android.widget.TextView;

import butterknife.ButterKnife.Finder;

public class PostFlag$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, PostFlag paramPostFlag, Object paramObject) {
        paramPostFlag.mHotFlag = ((TextView) paramFinder.findRequiredView(paramObject, 2131493180, "field 'mHotFlag'"));
        paramPostFlag.mDistillateFlag = ((TextView) paramFinder.findRequiredView(paramObject, 2131493423, "field 'mDistillateFlag'"));
    }

    public static void reset(PostFlag paramPostFlag) {
        paramPostFlag.mHotFlag = null;
        paramPostFlag.mDistillateFlag = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PostFlag..ViewInjector
 * JD-Core Version:    0.6.2
 */