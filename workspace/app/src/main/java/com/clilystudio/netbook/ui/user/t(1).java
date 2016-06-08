package com.clilystudio.netbook.ui.user;

import android.net.Uri;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Root;

import java.io.IOException;

final class t extends c<String, Root> {
    private Uri a;

    public t(ModifyUserInfoActivity paramModifyUserInfoActivity1, ModifyUserInfoActivity paramModifyUserInfoActivity2, String paramString, Uri paramUri) {
        super(paramModifyUserInfoActivity2, paramString);
        this.a = paramUri;
    }

    private Root a() {
        try {
            Root localRoot = b.b().a(am.a(this.b).getToken(), this.a);
            return localRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

