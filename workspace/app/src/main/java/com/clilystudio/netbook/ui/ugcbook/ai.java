package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UgcFilterRoot;

import java.io.IOException;

final class ai extends e<Void, Void, UgcFilterRoot> {
    private ai(UGCMainActivity paramUGCMainActivity) {
    }

    private UgcFilterRoot a() {
        try {
            UgcFilterRoot localUgcFilterRoot = b.b().o();
            return localUgcFilterRoot;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

