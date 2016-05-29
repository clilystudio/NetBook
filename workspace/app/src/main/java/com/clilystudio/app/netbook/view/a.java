package com.clilystudio.app.netbook.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;

public final class a extends Dialog
        implements DialogInterface {
    private View a;

    public a(Context paramContext) {
        super(paramContext, 2131165376);
    }

    public final a a(View paramView) {
        this.a = paramView;
        return this;
    }

    protected final void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        Context localContext = getContext();
        setCanceledOnTouchOutside(true);
        View localView = View.inflate(localContext, 2130903169, null);
        ((ViewGroup) localView.findViewById(2131493363)).addView(this.a);
        setContentView(localView);
        WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
        localLayoutParams.height = -2;
        localLayoutParams.width = -1;
        localLayoutParams.gravity = 80;
        getWindow().setAttributes(localLayoutParams);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.view.a
 * JD-Core Version:    0.6.2
 */