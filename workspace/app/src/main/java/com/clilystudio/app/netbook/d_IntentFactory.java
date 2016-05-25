package com.clilystudio.app.netbook;

import android.content.Context;
import android.content.Intent;

import java.io.Serializable;

public final class d_IntentFactory {
    private final Intent mIntent = new Intent();

    public final Intent a() {
        return this.mIntent;
    }

    public final d_IntentFactory a_setClass(Context paramContext, Class<?> paramClass) {
        this.mIntent.setClass(paramContext, paramClass);
        return this;
    }

    public final d_IntentFactory a_putExtra(String paramString, int paramInt) {
        this.mIntent.putExtra(paramString, paramInt);
        return this;
    }

    public final d_IntentFactory a_putExtra(String paramString, Serializable paramSerializable) {
        this.mIntent.putExtra(paramString, paramSerializable);
        return this;
    }

    public final d_IntentFactory a_putExtra(String paramString1, String paramString2) {
        this.mIntent.putExtra(paramString1, paramString2);
        return this;
    }

    public final d_IntentFactory a_putExtra(String paramString, String[] paramArrayOfString) {
        this.mIntent.putExtra(paramString, paramArrayOfString);
        return this;
    }
}
