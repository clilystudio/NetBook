package com.clilystudio.app.netbook.widget;

import android.widget.EditText;
import android.widget.ImageView;

import butterknife.ButterKnife.Finder;

public class SendView$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, SendView paramSendView, Object paramObject) {
        paramSendView.mSendContent = ((EditText) paramFinder.findRequiredView(paramObject, 2131494004, "field 'mSendContent'"));
        paramSendView.mSendView = ((ImageView) paramFinder.findRequiredView(paramObject, 2131494005, "field 'mSendView'"));
    }

    public static void reset(SendView paramSendView) {
        paramSendView.mSendContent = null;
        paramSendView.mSendView = null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.SendView..ViewInjector
 * JD-Core Version:    0.6.2
 */