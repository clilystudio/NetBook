package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;

import java.io.IOException;

final class bo extends e<String, Void, PayBalance> {
    private bo(ReaderActivity paramReaderActivity) {
    }

    private static PayBalance a(String[] paramArrayOfString) {
        try {
            b.a();
            PayBalance localPayBalance = b.b().b(paramArrayOfString[0]);
            return localPayBalance;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

