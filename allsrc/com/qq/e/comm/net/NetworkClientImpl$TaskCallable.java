package com.qq.e.comm.net;

import com.qq.e.comm.net.rr.Request;
import com.qq.e.comm.net.rr.Response;
import com.qq.e.comm.util.GDTLogger;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class NetworkClientImpl$TaskCallable
  implements Callable<Response>
{
  private Request a;
  private NetworkCallBack b;

  public NetworkClientImpl$TaskCallable(Request paramRequest)
  {
    this(paramRequest, null);
  }

  public NetworkClientImpl$TaskCallable(Request paramRequest, NetworkCallBack paramNetworkCallBack)
  {
    this.a = paramRequest;
    this.b = paramNetworkCallBack;
  }

  private void a(HttpRequestBase paramHttpRequestBase)
  {
    Iterator localIterator = this.a.getHeaders().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramHttpRequestBase.setHeader((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    paramHttpRequestBase.setHeader("User-Agent", "GDTADNetClient-[" + System.getProperty("http.agent") + "]");
    paramHttpRequestBase.addHeader("Accept-Encoding", "gzip");
    Object localObject = paramHttpRequestBase.getParams();
    if (localObject == null)
      localObject = new BasicHttpParams();
    if (this.a.getConnectionTimeOut() > 0)
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject, this.a.getConnectionTimeOut());
    if (this.a.getSocketTimeOut() > 0)
      HttpConnectionParams.setSoTimeout((HttpParams)localObject, this.a.getSocketTimeOut());
    paramHttpRequestBase.setParams((HttpParams)localObject);
  }

  public Response call()
  {
    try
    {
      HttpClient localHttpClient = NetworkClientImpl.a();
      switch (NetworkClientImpl.1.a[this.a.getMethod().ordinal()])
      {
      case 1:
      case 2:
      }
      while (true)
      {
        HttpResponse localHttpResponse = localHttpClient.execute((HttpUriRequest)localObject);
        Response localResponse2 = this.a.initResponse((HttpUriRequest)localObject, localHttpResponse);
        localResponse1 = localResponse2;
        Throwable localThrowable = null;
        if (localThrowable == null)
        {
          if (this.b != null)
            this.b.onResponse(this.a, localResponse1);
          if (this.a.isAutoClose())
            localResponse1.close();
          return localResponse1;
          localObject = new HttpPost(this.a.getUrlWithParas());
          a((HttpRequestBase)localObject);
          byte[] arrayOfByte = this.a.getPostData();
          if ((arrayOfByte == null) || (arrayOfByte.length <= 0))
            continue;
          ((HttpPost)localObject).setEntity(new ByteArrayEntity(arrayOfByte));
          continue;
          localObject = new HttpGet(this.a.getUrlWithParas());
          a((HttpRequestBase)localObject);
          continue;
        }
        localResponse1.close();
        if (this.b != null)
        {
          GDTLogger.w("NetworkClientException", localThrowable);
          this.b.onException(localThrowable);
          return localResponse1;
        }
        throw localThrowable;
        Object localObject = null;
      }
    }
    catch (Exception localException)
    {
      while (true)
        Response localResponse1 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.NetworkClientImpl.TaskCallable
 * JD-Core Version:    0.6.0
 */