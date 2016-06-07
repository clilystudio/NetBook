package com.squareup.okhttp.internal.spdy;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import okio.ByteString;

final class e
{
  private static final d[] a;
  private static final Map<ByteString, Integer> b;

  static
  {
    int i = 0;
    d[] arrayOfd = new d[61];
    arrayOfd[0] = new d(d.e, "");
    arrayOfd[1] = new d(d.b, "GET");
    arrayOfd[2] = new d(d.b, "POST");
    arrayOfd[3] = new d(d.c, "/");
    arrayOfd[4] = new d(d.c, "/index.html");
    arrayOfd[5] = new d(d.d, "http");
    arrayOfd[6] = new d(d.d, "https");
    arrayOfd[7] = new d(d.a, "200");
    arrayOfd[8] = new d(d.a, "204");
    arrayOfd[9] = new d(d.a, "206");
    arrayOfd[10] = new d(d.a, "304");
    arrayOfd[11] = new d(d.a, "400");
    arrayOfd[12] = new d(d.a, "404");
    arrayOfd[13] = new d(d.a, "500");
    arrayOfd[14] = new d("accept-charset", "");
    arrayOfd[15] = new d("accept-encoding", "gzip, deflate");
    arrayOfd[16] = new d("accept-language", "");
    arrayOfd[17] = new d("accept-ranges", "");
    arrayOfd[18] = new d("accept", "");
    arrayOfd[19] = new d("access-control-allow-origin", "");
    arrayOfd[20] = new d("age", "");
    arrayOfd[21] = new d("allow", "");
    arrayOfd[22] = new d("authorization", "");
    arrayOfd[23] = new d("cache-control", "");
    arrayOfd[24] = new d("content-disposition", "");
    arrayOfd[25] = new d("content-encoding", "");
    arrayOfd[26] = new d("content-language", "");
    arrayOfd[27] = new d("content-length", "");
    arrayOfd[28] = new d("content-location", "");
    arrayOfd[29] = new d("content-range", "");
    arrayOfd[30] = new d("content-type", "");
    arrayOfd[31] = new d("cookie", "");
    arrayOfd[32] = new d("date", "");
    arrayOfd[33] = new d("etag", "");
    arrayOfd[34] = new d("expect", "");
    arrayOfd[35] = new d("expires", "");
    arrayOfd[36] = new d("from", "");
    arrayOfd[37] = new d("host", "");
    arrayOfd[38] = new d("if-match", "");
    arrayOfd[39] = new d("if-modified-since", "");
    arrayOfd[40] = new d("if-none-match", "");
    arrayOfd[41] = new d("if-range", "");
    arrayOfd[42] = new d("if-unmodified-since", "");
    arrayOfd[43] = new d("last-modified", "");
    arrayOfd[44] = new d("link", "");
    arrayOfd[45] = new d("location", "");
    arrayOfd[46] = new d("max-forwards", "");
    arrayOfd[47] = new d("proxy-authenticate", "");
    arrayOfd[48] = new d("proxy-authorization", "");
    arrayOfd[49] = new d("range", "");
    arrayOfd[50] = new d("referer", "");
    arrayOfd[51] = new d("refresh", "");
    arrayOfd[52] = new d("retry-after", "");
    arrayOfd[53] = new d("server", "");
    arrayOfd[54] = new d("set-cookie", "");
    arrayOfd[55] = new d("strict-transport-security", "");
    arrayOfd[56] = new d("transfer-encoding", "");
    arrayOfd[57] = new d("user-agent", "");
    arrayOfd[58] = new d("vary", "");
    arrayOfd[59] = new d("via", "");
    arrayOfd[60] = new d("www-authenticate", "");
    a = arrayOfd;
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(61);
    while (i < 61)
    {
      if (!localLinkedHashMap.containsKey(a[i].h))
        localLinkedHashMap.put(a[i].h, Integer.valueOf(i));
      i++;
    }
    b = Collections.unmodifiableMap(localLinkedHashMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.e
 * JD-Core Version:    0.6.0
 */