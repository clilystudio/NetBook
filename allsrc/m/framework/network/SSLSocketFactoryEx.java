package m.framework.network;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public class SSLSocketFactoryEx extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext sslContext = SSLContext.getInstance("TLS");

  public SSLSocketFactoryEx(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    SSLSocketFactoryEx.1 local1 = new SSLSocketFactoryEx.1(this);
    this.sslContext.init(null, new TrustManager[] { local1 }, null);
  }

  public Socket createSocket()
  {
    return this.sslContext.getSocketFactory().createSocket();
  }

  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.SSLSocketFactoryEx
 * JD-Core Version:    0.6.0
 */