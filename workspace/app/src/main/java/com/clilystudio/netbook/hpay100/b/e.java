package com.clilystudio.netbook.hpay100.b;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

final class e implements HttpResponseInterceptor {

    public final void process(HttpResponse HttpResponse1, HttpContext HttpContext2) {
        Header Header3 = HttpResponse1.getEntity().getContentEncoding();

        if (Header3 != null) {
            HeaderElement[] HeaderElement_1darray4 = Header3.getElements();
            int int5 = HeaderElement_1darray4.length;
            int int6 = 0;

            while (int6 < int5) {
                if (HeaderElement_1darray4[int6].getName().equalsIgnoreCase("gzip")) {
                    HttpResponse1.setEntity((HttpEntity) new b(HttpResponse1.getEntity()));
                    return;
                } else
                    ++int6;
            }
        }
    }
}
