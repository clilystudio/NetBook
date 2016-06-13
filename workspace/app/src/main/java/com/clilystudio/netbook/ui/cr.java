package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.TxtFileObject;
import com.koushikdutta.async.http.a.a;

import org.apache.http.NameValuePair;

import java.io.File;

final class cr
        implements r {
    cr(WifiActivity wifiActivity) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a(h h2, l l2) {
        k k2 = (k) h2.b_();
        String string = null;
        for (NameValuePair nameValuePair : k2.b()) {
            String string2 = "file_name".equals(nameValuePair.getName()) ? nameValuePair.getValue() : string;
            string = string2;
        }
        File file = com.clilystudio.netbook.hpay100.a.a.I(string);
        if (file != null) {
            TxtFileObject.remove(new BookFile(file));
            file.delete();
        }
        l2.a("finish");
    }
}
