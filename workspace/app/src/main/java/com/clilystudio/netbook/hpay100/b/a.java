package com.clilystudio.netbook.hpay100.b;

import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

import java.io.InputStream;
import java.io.OutputStream;

abstract class a extends HttpEntityWrapper {

    private InputStream a;

    public a(HttpEntity HttpEntity1) {
        super(HttpEntity1);
    }

    abstract InputStream a(InputStream InputStream1);

    public InputStream getContent() {
        if (!wrappedEntity.isStreaming())
            return a(wrappedEntity.getContent());
        if (a == null)
            a = a(wrappedEntity.getContent());
        return a;
    }

    public void writeTo(OutputStream OutputStream1) {
        if (OutputStream1 == null)
            throw new IllegalArgumentException("Output stream may not be null");
        else {
            InputStream InputStream2 = getContent();
            byte[] byte_1darray5;
            int int6;

            try {
                byte_1darray5 = new byte[2048];
                for (; ; ) {
                    int6 = InputStream2.read(byte_1darray5);
                    break;
                }
            } finally {
                if (InputStream2 != null) {
                    try {
                        InputStream2.close();
                    } catch (Exception Exception4) {
                        Exception4.printStackTrace();
                    }
                }
                throw Object3;
            }
            if (int6 == -1) {
                if (InputStream2 != null) {
                    try {
                        InputStream2.close();
                    } catch (Exception Exception7) {
                        Exception7.printStackTrace();
                        return;
                    }
                }
                return;
            } else {
                try {
                    label_13:
                    OutputStream1.write(byte_1darray5, 0, int6);
                    break label_13;
                } finally {
                    if (InputStream2 != null)
                        InputStream2.close();
                    throw Object3;
                }
            }
        }
    }
}
