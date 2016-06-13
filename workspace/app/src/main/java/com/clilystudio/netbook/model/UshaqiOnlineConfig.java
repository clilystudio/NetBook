package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class UshaqiOnlineConfig {
    private String serverError;

    public String getServerError() {
        return this.serverError;
    }

    public boolean isServerError() {
        if (!TextUtils.isEmpty(this.serverError)) {
            return true;
        }
        return false;
    }

    public void setServerError(String string) {
        this.serverError = string;
    }
}
