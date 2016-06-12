package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.TxtFileObject;

import org.apache.http.NameValuePair;

import java.io.File;
import java.util.Iterator;

final class cr implements r {

    cr(WifiActivity WifiActivity1) {
    }

    public final void a(h h1, l l2) {
        k k3 = (k) h1.b_();
        String String4 = null;
        Iterator Iterator5 = k3.b().iterator();
        File File6;

        while (Iterator5.hasNext()) {
            NameValuePair NameValuePair8 = (NameValuePair) Iterator5.next();
            String String9;

            if ("file_name".equals(NameValuePair8.getName()))
                String9 = NameValuePair8.getValue();
            else
                String9 = String4;
            String4 = String9;
        }
        File6 = com.clilystudio.netbook.hpay100.a.a.I(String4);
        if (File6 != null) {
            TxtFileObject.remove(new BookFile(File6));
            File6.delete();
        }
        l2.a("finish");
    }
}
