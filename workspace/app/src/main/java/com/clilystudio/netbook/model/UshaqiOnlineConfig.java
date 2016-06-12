
package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class UshaqiOnlineConfig {

    private String serverError;

    public String getServerError()
    {
        return serverError;
    }

    public boolean isServerError()
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) serverError ) )
            return true;
        else
            return false;
    }

    public void setServerError(String String1)
    {
        serverError = String1;
    }
}
