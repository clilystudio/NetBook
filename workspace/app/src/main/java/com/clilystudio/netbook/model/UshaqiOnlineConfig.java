package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class UshaqiOnlineConfig {
    private String serverError;

    public String getServerError() {
        return this.serverError;
    }

    public boolean isServerError() {
        return !TextUtils.isEmpty(this.serverError);
    }

    public void setServerError(String paramString) {
        this.serverError = paramString;
    }
}

