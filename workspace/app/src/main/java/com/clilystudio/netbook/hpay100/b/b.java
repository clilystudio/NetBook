package com.clilystudio.netbook.hpay100.b;

import org.apache.http.Header;
import org.apache.http.HttpEntity;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;

public final class b extends a {

    public b(HttpEntity HttpEntity1) {
        super(HttpEntity1);
    }

    final InputStream a(InputStream InputStream1) {
        return (InputStream) new GZIPInputStream(InputStream1);
    }

    public final volatile InputStream getContent() {
        return super.getContent();
    }

    public final Header getContentEncoding() {
        return null;
    }

    public final long getContentLength() {
        return -1L;
    }

    public final volatile void writeTo(OutputStream OutputStream1) {
        super.writeTo(OutputStream1);
    }
}
