package com.xiaomi.kenai.jbosh;

import java.util.HashMap;
import java.util.Map;

final class o
{
  private static final Map<String, o> a = new HashMap();
  private static final Map<Integer, o> b = new HashMap();
  private final String c;
  private final String d;

  static
  {
    a("bad-request", "The format of an HTTP header or binding element received from the client is unacceptable (e.g., syntax error).", Integer.valueOf(400));
    a("host-gone", "The target domain specified in the 'to' attribute or the target host or port specified in the 'route' attribute is no longer serviced by the connection manager.", null);
    a("host-unknown", "The target domain specified in the 'to' attribute or the target host or port specified in the 'route' attribute is unknown to the connection manager.", null);
    a("improper-addressing", "The initialization element lacks a 'to' or 'route' attribute (or the attribute has no value) but the connection manager requires one.", null);
    a("internal-server-error", "The connection manager has experienced an internal error that prevents it from servicing the request.", null);
    a("item-not-found", "(1) 'sid' is not valid, (2) 'stream' is not valid, (3) 'rid' is larger than the upper limit of the expected window, (4) connection manager is unable to resend response, (5) 'key' sequence is invalid.", Integer.valueOf(404));
    a("other-request", "Another request being processed at the same time as this request caused the session to terminate.", null);
    a("policy-violation", "The client has broken the session rules (polling too frequently, requesting too frequently, sending too many simultaneous requests).", Integer.valueOf(403));
    a("remote-connection-failed", "The connection manager was unable to connect to, or unable to connect securely to, or has lost its connection to, the server.", null);
    a("remote-stream-error", "Encapsulated transport protocol error.", null);
    a("see-other-uri", "The connection manager does not operate at this URI (e.g., the connection manager accepts only SSL or TLS connections at some https: URI rather than the http: URI requested by the client).", null);
    a("system-shutdown", "The connection manager is being shut down. All active HTTP sessions are being terminated. No new sessions can be created.", null);
    a("undefined-condition", "Unknown or undefined error condition.", null);
  }

  private o(String paramString1, String paramString2)
  {
    this.c = paramString1;
    this.d = paramString2;
  }

  static o a(int paramInt)
  {
    return (o)b.get(Integer.valueOf(paramInt));
  }

  static o a(String paramString)
  {
    return (o)a.get(paramString);
  }

  private static o a(String paramString1, String paramString2, Integer paramInteger)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("condition may not be null");
    if (paramString2 == null)
      throw new IllegalArgumentException("message may not be null");
    if (a.get(paramString1) != null)
      throw new IllegalStateException("Multiple definitions of condition: " + paramString1);
    o localo = new o(paramString1, paramString2);
    a.put(paramString1, localo);
    if (paramInteger != null)
    {
      if (b.get(paramInteger) != null)
        throw new IllegalStateException("Multiple definitions of code: " + paramInteger);
      b.put(paramInteger, localo);
    }
    return localo;
  }

  final String a()
  {
    return this.c;
  }

  final String b()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.o
 * JD-Core Version:    0.6.0
 */